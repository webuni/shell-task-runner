#!/bin/sh
. "$(dirname "$0")/../runner"

set +e
trap - EXIT

_text=""
_value=""

scenario(){
  _text="$1"
}

output(){
  _value="$(eval "$@")"
}

should()(
  eval "$@"
)

be()(
  eval "$@"
)

equal()(
  diff="$(_diff "$_value" "$1")"
  [ $? -eq 0 ] && _pass "$_text" || _fail "$_text" || echo "$diff" | _indent
)

scenario Ansi
  output _ansi --red "Red"
  should be equal "$(printf "\e[31m%s\e[39m" "Red")"

scenario "Ansifilter"
  output _ansifilter "$(printf "\e[31m%s\e[39m" "Red")"
  should be equal "Red"
