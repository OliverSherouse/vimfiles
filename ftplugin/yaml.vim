if executable('prettier')
    let &l:equalprg="prettier --parser yaml"
else
    echo "For autoformatting install prettier"
endif
