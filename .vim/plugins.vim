" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

" Bundle 'Valloric/YouCompleteMe'
" Bundle 'aserebryakov/vim-todo-lists'
" Bundle 'powerline/powerline'
" Bundle 'ryanoasis/vim-devicons'
" Bundle 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plugin 'ambv/black'
" Plugin 'preservim/tagbar'
" Plugin 'scrooloose/nerdtree'
" Plugin 'unimpaired.vim'
" Plugin 'ycm-core/YouCompleteMe'
Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'christoomey/vim-sort-motion'
Bundle 'preservim/nerdtree'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Plugin 'RltvNmbr.vim'
Plugin 'Syntastic'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'airblade/vim-gitgutter'
Plugin 'chrisbra/csv.vim'
Plugin 'christoomey/vim-system-copy'
Plugin 'commentary.vim'
Plugin 'dense-analysis/ale'
Plugin 'frazrepo/vim-rainbow'
Plugin 'gmarik/Vundle.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'
Plugin 'jeetsukumaran/vim-pythonsense'
Plugin 'jiangmiao/auto-pairs'
Plugin 'joshdick/onedark.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'neoclide/coc-python'
Plugin 'psf/black'
Plugin 'rhysd/vim-fixjson'
Plugin 'surround.vim'
Plugin 'vim-scripts/indentpython.vim'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

