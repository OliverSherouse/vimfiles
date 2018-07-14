if expand('%:p') =~ '*/blog/*'
    let b:markdown_flavor="markdown_github+footnotes+yaml_metadata_block"
else
    let b:markdown_flavor="markdown"
endif
if executable('pandoc')
    let &l:equalprg="pandoc  --standalone --atx-headers --wrap=none -f "
                \.b:markdown_flavor."+inline_notes -t ".b:markdown_flavor
else
    echo "For autoformatting install pandoc"
endif

set wrap
set linebreak
