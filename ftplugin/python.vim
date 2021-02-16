setlocal shellredir=>%s
if executable('black')
    let &l:formatprg="black -q --fast -"
else
    echo "For autoformatting install black"
endif

let b:linter = "flake8"
