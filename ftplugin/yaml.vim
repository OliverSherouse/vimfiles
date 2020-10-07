if executable('prettier')
    let &l:formatprg="prettier --parser yaml"
else
    echo "For autoformatting install prettier"
endif
