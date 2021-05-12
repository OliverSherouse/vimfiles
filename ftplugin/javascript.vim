setlocal softtabstop=2
setlocal shiftwidth=2
if executable("prettier")
    let &l:formatprg="prettier --parser=babel"
else
    echo "For autoformatting install prettier"
endif
let b:neomake_javascript_enabled_makers = ['eslint']
