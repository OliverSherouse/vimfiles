if exists("current_compiler")
    finish
endif
let current_compiler = "flake8"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
    command -nargs=* CompilerSet setlocal <args>
endif

if filereadable('Pipfile')
    CompilerSet makeprg=pipenv\ run\ pytest\ -q\ --tb=line\ --disable-warnings
else
    CompilerSet makeprg=pytest\ -q\ --tb=line\ --disable-warnings
endif

CompilerSet errorformat=%f:%l:\ %m 

