if executable('autopep8')
    let &l:equalprg="autopep8 -aa -"
else
    echo "For autoformatting install autopep8"
endif

setlocal omnifunc=python3complete#Complete
