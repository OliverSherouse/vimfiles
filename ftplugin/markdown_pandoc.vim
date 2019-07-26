if executable('pandoc')
    if expand('%:p') =~ '/blog/'
        let b:markdown_flavor="markdown_github"
                    \."+footnotes"
                    \."+yaml_metadata_block"
    elseif expand('%:p') =~ '/docs/'
        let b:markdown_flavor="commonmark"
    else
        let b:markdown_flavor="markdown-simple_tables"
    endif
    let &l:equalprg="pandoc  --standalone --atx-headers --columns=79 -f "
                \.b:markdown_flavor."+inline_notes -t ".b:markdown_flavor
else
    echo "For autoformatting install pandoc"
endif
set tw=79
