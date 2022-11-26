set nocompatible              " required
filetype off                  " required
filetype plugin on
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
" colorscheme onedark

" syntax_settings
source ~/.vim/file_syntax_settings.vim

" commands
command Loadrc :source ~/.vimrc
command Jsonfix silent! :%s/False/false/g | silent! :%s/True/true/g | FixJSON
command Clrs :nohlsearch 
command Nh :nohlsearch 

let mapleader=","

" keymap >>
nnoremap <space> za
" insert mode map >>"
inoremap jk <esc>
" normal mode map >>"
nnoremap <silent> <C-@>  :<c-u>put!=repeat([''],v:count)<bar>']+1<cr>
" nnoremap <silent> ]<space>  :<c-u>put =repeat([''],v:count)<bar>'[-1<cr>]]
" NERDTree settings
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>d :NERDTreeFind<CR>
" move window backwards
nnoremap <leader>b :wincmd h<CR>
" move window forwards
nnoremap <leader>f :wincmd l<CR>
" insert a space
nnoremap <leader><space> i<space><right><esc>

set number
set relativenumber
set hlsearch
set showcmd
set encoding=utf-8
" powerline
set laststatus=2
set t_Co=256
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set rtp+=~/.fzf
set smartcase
set ignorecase

let g:syntastic_python_pylint_post_args="--max-line-length=120"
let g:black_linelength = 120
let g:ale_python_flake8_options = '--max-line-length=120'
let g:syntastic_python_flake8_post_args="--max-line-length=120"
let g:syntastic_python_checkers=["flake8"]
let g:syntastic_python_checker_args="--ignore=E501,W601"
let g:NERDTreeWinSize=40

let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

source ~/.vim/plugins.vim
" source ~/.vim/fzf_settings.vim

