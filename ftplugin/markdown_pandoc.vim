if executable('pandoc')
    if expand('%:p:r') =~ 'README$'
        let b:markdown_flavor="gfm"
    elseif expand('%:p') =~ '/blog/'
        let b:markdown_flavor="markdown_github"
                    \."+footnotes"
                    \."+yaml_metadata_block"
                    \."+inline_notes"
    elseif expand('%:p') =~ '/docs/'
        let b:markdown_flavor="commonmark"
    else
        let b:markdown_flavor="markdown-simple_tables"
                    \."+inline_notes"
    endif
    let &l:formatprg="pandoc  --standalone --markdown-headings=atx --columns=80 -f "
                \.b:markdown_flavor." -t ".b:markdown_flavor
else
    echo "For autoformatting install pandoc"
endif
set tw=80
