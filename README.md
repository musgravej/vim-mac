Clone this repo to local directory (ex: `~/github/vim-mac/`)

Install [Vundle](https://github.com/VundleVim/Vundle.vim) before launching vim for the first time:
```
mkdir ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Set up symbolic links:
```
ln -s ~/github/vim-mac/.vimrc ~/.vimrc
ln -s ~/github/vim-mac/.vim ~/.vim
```

Run command in Vim on first application launch:
```
:PluginInstall
```
