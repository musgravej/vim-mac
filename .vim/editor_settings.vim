set tabstop=4

" Enable folding
set foldmethod=indent
set foldlevel=99
" set colorcolumn=120

syntax enable
" colors
" source ~/.vim/colorscheme.vim
set background=dark
colorscheme darcula
setlocal spell spelllang=en_us
set nospell
" set conceallevel=3
autocmd BufWritePre *.py %s/\s\+$//e 
autocmd BufWritePre *.txt %s/\s\+$//e 

let g:mapleader = " "
let mapleader=" "
" set g:mapleader = ","
" let mapleader=","
set number
set relativenumber
set encoding=utf-8
set laststatus=2
set t_Co=256
set hlsearch
set showcmd
" set guifont=Inconsolata\ for\ Powerline:h15
" set guifont=DroidSansMono\ Nerd\ Font\ Mono:h11
set guifont=DroidSansMono_Nerd_Font_Mono:h11

let g:Powerline_symbols='fancy'
let g:fixjson_indent_size=4
" let g:fixjson_fix_on_save = 0
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set rtp+=~/.fzf
set smartcase
set ignorecase
" set foldcolumn=1

let g:syntastic_python_pylint_post_args="--max-line-length=120"
let g:black_linelength=120
let g:ale_python_flake8_options='--max-line-length=120'
let g:syntastic_python_flake8_post_args="--max-line-length=120"
let g:syntastic_python_checkers=["flake8"]
let g:syntastic_python_checker_args="--ignore=E501,W601"
let g:NERDTreeWinSize=40
let g:NERDTreeShowHidden=1

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:NERDTreeGitStatusIndicatorMapCustom = {
		\ 'Modified'  :'✹',
		\ 'Staged'    :'✚',
		\ 'Untracked' :'✭',
		\ 'Renamed'   :'➜',
		\ 'Unmerged'  :'═',
		\ 'Deleted'   :'✖',
		\ 'Dirty'     :'✗',
		\ 'Ignored'   :'☒',
		\ 'Clean'     :'✔︎',
		\ 'Unknown'   :'?',
		\ }
let g:NERDTreeGitStatusUseNerdFonts = 1
" YouCompleteMe, hint options
set completeopt-=preview
set completeopt-=popup
" Use homebrew's clangd
let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'
let g:ycm_add_preview_to_completeopt=0
let g:ycm_autoclose_preview_window_after_insertion=1

let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Shortcut to use blackhole register by default
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C
nnoremap x "_x
vnoremap x "_x
nnoremap X "_X
vnoremap X "_X
" Shortcut to use clipboard with <leader>
nnoremap <leader>d d
vnoremap <leader>d d
nnoremap <leader>D D
vnoremap <leader>D D
nnoremap <leader>c c
vnoremap <leader>c c
nnoremap <leader>C C
vnoremap <leader>C C
nnoremap <leader>x x
vnoremap <leader>x x
nnoremap <leader>X X
vnoremap <leader>X X

