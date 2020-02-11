if exists("current_compiler")
    finish
endif
let current_compiler = "flake8"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
    command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

" if filereadable('yo.yaml')
"     CompilerSet makeprg=yo\ test\ -q\ --tb=line\ --disable-warnings
" elseif filereadable('pyproject.toml')
"
if filereadable('pyproject.toml')
    CompilerSet makeprg=poetry\ run\ pytest\ -q\ --tb=short\ --disable-warnings
elseif filereadable('Pipfile')
    CompilerSet makeprg=pipenv\ run\ pytest\ -q\ --tb=short\ --disable-warnings
else
    CompilerSet makeprg=pytest\ -q\ --tb=short\ --disable-warnings
endif

CompilerSet errorformat=
            \%-G=%#\ ERRORS\ =%#,
            \%-G=%#\ FAILURES\ =%#,
            \%-G%\\s%\\*%\\d%\\+\ tests\ deselected%.%#,
            \ERROR:\ %m,
            \%E_%\\+\ %m\ _%\\+,
            \%Cfile\ %f\\,\ line\ %l,
            \%CE\ %#%m,
            \%EE\ \ \ \ \ File\ \"%f\"\\,\ line\ %l,
            \%ZE\ \ \ %[%^\ ]%\\@=%m,
            \%Z%f:%l:\ %m,
            \%Z%f:%l,
            \%C%.%#,
            \%-G%.%#\ seconds,
            \%-G%.%#,

let &cpo = s:cpo_save
unlet s:cpo_save
