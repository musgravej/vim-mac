" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Bundle 'Valloric/YouCompleteMe'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'itchyny/lightline.vim'
Bundle 'powerline/powerline'
" Plugin 'scrooloose/nerdtree'
Plugin 'jeetsukumaran/vim-pythonsense'
Plugin 'jiangmiao/auto-pairs'
Plugin 'neoclide/coc-python'
Plugin 'dense-analysis/ale'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'Syntastic'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'RltvNmbr.vim'
Plugin 'rhysd/vim-fixjson'
Plugin 'psf/black'
" Plugin 'ambv/black'
Plugin 'christoomey/vim-system-copy'
Plugin 'frazrepo/vim-rainbow'
Plugin 'junegunn/fzf.vim'
Plugin 'surround.vim'
Plugin 'commentary.vim'
" Plugin 'unimpaired.vim'
Bundle 'christoomey/vim-sort-motion'
Bundle 'preservim/nerdtree'
Bundle 'Xuyuanp/nerdtree-git-plugin'
Plugin 'haya14busa/incsearch.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'chrisbra/csv.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'preservim/tagbar'
Plugin 'airblade/vim-gitgutter'
" Bundle 'aserebryakov/vim-todo-lists'
" Bundle 'ryanoasis/vim-devicons'
" Bundle 'tiagofumo/vim-nerdtree-syntax-highlight'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'tmhedberg/SimpylFold'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

