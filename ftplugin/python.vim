if executable('autopep8')
    let &l:equalprg="yapf"
else
    echo "For autoformatting install yapf"
endif

setlocal omnifunc=python3complete#Complete
compiler flake8
