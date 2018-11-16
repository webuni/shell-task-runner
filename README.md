Shell Task Runner
=================

Simple, lightweight, self-documented task runner for POSIX Shell.
Compatible with dash, ash, bash, Linux, Mac OS, alpine, docker.

Usage
-----

You could create shell script e.g. `run` in your project with code:

```bash
task_hello() { ## Print Hello World box
    _box --p=1 --bg-green --bold --white "Hello World! $(_ansi --blue "🌍")"
}

url="https://raw.githubusercontent.com/webuni/shell-task-runner/master/run"
command -v 'wget'>/dev/null && eval "$(wget -qO- "$url")" || eval "$(curl -s "$url")"
```

And then you just have to run this file `sh ./run`.

Helper functions
----------------

### _align

### _ansi

### _box

### _doc_comment

### _doc_title

### _docker_run

### _dotenv

### _log

### _quote

### _shell_escape

### _printf_escape

Inspiration
-----------

 - [Self-Documented Makefile](https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html)
 - https://github.com/jez/bask
 - https://github.com/stylemistake/runner 
 - https://github.com/fidian/ansi
- [Rich’s sh (POSIX shell) tricks](http://www.etalabs.net/sh_tricks.html)
