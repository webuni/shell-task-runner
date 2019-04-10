Shell Task Runner
=================

Simple, lightweight, self-documented task runner for POSIX Shell.
Compatible with ash, bash, dash, Linux, Mac OS, alpine, docker.

Usage
-----

You could create shell script e.g. `run` in your project with code:

```bash
task_hello() { ## Print Hello World box
    _box --p=1 --bg-green --bold --white "Hello World! $(_ansi --blue "🌍")"
}

url="https://raw.githubusercontent.com/webuni/shell-task-runner/master/run"
if [ -n "$(command -v 'wget')" ]; then eval "$(wget -qO- "$url")"; else eval "$(curl -s "$url")"; fi
```

And then you just have to run this file `sh ./run`.

Helper functions
----------------

- **_align**

- **_ansi**

- **_box**

- **_doc_comment**

- **_doc_title**

- **_docker_run**

- **_dotenv**

- **_header**: Application header.

- **_indent**

- **_log**

- **_quote**

- **_printf_escape**

- **_shell_escape**

- **_tasks**: List of functions with prefix `task_`.

Customization
-------------

If you want to replace a helper functions, you should import runner script and then implement helper function.
At the end of the file, you must explicitly call `_run`:

```bash
url="https://raw.githubusercontent.com/webuni/shell-task-runner/master/run"
if [ -n "$(command -v 'wget')" ]; then eval "$(wget -qO- "$url")"; else eval "$(curl -s "$url")"; fi

_header()(
    printf '%s\n\n' "$(_ansi --bold "My application")"
)

_run "$@"
```

Inspiration
-----------

 - [Self-Documented Makefile](https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html)
 - https://github.com/jez/bask
 - https://github.com/stylemistake/runner 
 - https://github.com/fidian/ansi
- [Rich’s sh (POSIX shell) tricks](http://www.etalabs.net/sh_tricks.html)
