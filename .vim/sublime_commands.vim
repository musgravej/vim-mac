command Loadrc :source ~/.vimrc-sublime
command Clrs :nohlsearch 
command Nh :nohlsearch 
command Spellon :set spell
command Spelloff :set nospell
command Jsonfix silent! :%s/False/false/g | silent! :%s/None/null/g | silent! :%s/True/true/g | FixJSON
command Copydoc silent! :G0"*ygg
