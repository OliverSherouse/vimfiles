setlocal softtabstop=2
setlocal shiftwidth=2
setlocal shellredir=>%s
if executable('standard')
    let &l:equalprg="standard --fix --stdin"
else
    echo "For autoformatting install standard"
endif
let b:neomake_javascript_enabled_makers = ['standard']
