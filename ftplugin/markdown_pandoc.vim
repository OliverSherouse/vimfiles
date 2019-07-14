if executable('pandoc')
    if expand('%:p') =~ '*/blog/*'
        let b:markdown_flavor="markdown_github+footnotes+yaml_metadata_block"
    else
        let b:markdown_flavor="markdown"
    endif
    let &l:equalprg="pandoc  --standalone --atx-headers --columns=80 -f "
                \.b:markdown_flavor."+inline_notes -t "
                \.b:markdown_flavor
else
    echo "For autoformatting install pandoc"
endif

set wrap
set linebreak
