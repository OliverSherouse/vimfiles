set guioptions-=m " Turn off menubar
set guioptions-=T " Turn off toolbar
set guioptions-=r " Turn off right-hand scrollbar
set guioptions-=R " Turn off right-hand scrollbar when split
set guioptions-=L " Turn off left-hand scrollbar
set guioptions-=l " Turn off left-hand=scrollbar when split
set guicursor+=a:blinkon0 " Turn off blinking cursor

if has("win32")
    set guifont=Consolas:h11
else
    set guifont=Inconsolata\ 12
endif
