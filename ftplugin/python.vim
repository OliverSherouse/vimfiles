setlocal shellredir=>%s
if executable('black')
    let &l:equalprg="black -q -"
else
    echo "For autoformatting install black"
endif
let b:neomake_python_enabled_makers = ['flake8']
compiler pytest
