au BufNewFile,BufRead *.vim
	\ colorscheme rigel

au BufNewFile,BufRead *.txt 
    \ set wrap |
    \ set linebreak |
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=0 |
	\ colorscheme nord |
    \ set wrapmargin=0

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120|
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set foldmethod=indent |
    \ colorscheme onedark

au BufNewFile,BufRead *.json
    \ set tabstop=4 |
	\ set smarttab |
    \ set expandtab |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ colorscheme onedark |
    \ set foldmethod=syntax |
    \ set nowrap

 au BufNewFile,BufRead *.js, *.html, *.css <here>:</here>
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

