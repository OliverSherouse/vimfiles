setlocal shellredir=>%s
if executable('black')
    let &l:equalprg="black -l 79 -q -"
else
    echo "For autoformatting install black"
endif
let b:neomake_python_enabled_makers = ['flake8']
