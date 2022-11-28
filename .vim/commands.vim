" command Loadrc :source ~/.vimrc
command Loadrc :source ~/.vimrc
command Clrs :nohlsearch 
command Nh :nohlsearch 
command Jsonfix silent! :%s/False/false/g | silent! :%s/None/null/g | silent! :%s/True/true/g | FixJSON
