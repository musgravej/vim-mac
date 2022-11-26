" command Loadrc :source ~/.vimrc
command Jsonfix silent! :%s/False/false/g | silent! :%s/None/null/g | silent! :%s/True/true/g | FixJSON
