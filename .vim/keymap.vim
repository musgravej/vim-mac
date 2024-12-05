" keymap >>
" nnoremap <space> za
nnoremap ,<space> za
" insert mode map"
inoremap jk <esc>
inoremap ;; <esc>

" Clear search highliting
nnoremap <leader>nh :nohl<CR>

" Fast file write
nnoremap <leader>www :w<CR>

" normal mode map"
nnoremap <silent> <C-@>  :<c-u>put!=repeat([''],v:count)<bar>']+1<cr>
" nnoremap <silent> ]<space>  :<c-u>put =repeat([''],v:count)<bar>'[-1<cr>]]

" move window backwards
nnoremap <leader>b :wincmd h<CR>
" move window forwards
nnoremap <leader>f :wincmd l<CR>
" insert a space
nnoremap <leader><space> i<space><right><esc>
" nnoremap <silent> <localleader>h <Plug>(YCMToggleInlayHints)
" tnoremap <Esc><Esc> <C-j>:q!<CR>
" ctrl+p to toggle between previous windows (terminal)

" tab mapping
tnoremap <leader>t <C-w>w
tnoremap <leader>w <C-w>

nnoremap <leader>th  :tabfirst<CR>
nnoremap <leader>tk  :tabnext<CR>
nnoremap <leader>tj  :tabprev<CR>
nnoremap <leader>tl  :tablast<CR>
" nnoremap tt  :tabedit<Space>
" nnoremap tn  :tabnext<Space>
nnoremap <leader>tm  :tabm<Space>
nnoremap <leader>td  :tabclose<CR>
nnoremap <leader>tn :tabnew<CR>

" move lines up or down
nnoremap <C-S-backspace> :m .+1<CR>==
nnoremap <C-backspace> :m .-2<CR>==
inoremap <C-S-backspace> <Esc>:m .+1<CR>==gi
inoremap <C-backspace> <Esc>:m .-2<CR>==gi
vnoremap <C-S-backspace> :m '>+1<CR>gv=gv
vnoremap <C-backspace> :m '<-2<CR>gv=gv

" copy to clipboard
" *copy *line (with cr, without)
nnoremap <leader>cL "*yy
vnoremap <leader>cL "*y

nnoremap <leader>cl mz^"*y$`z
vnoremap <leader>cl mz^"*y$`z
" copy file
nnoremap <leader>cf mzG$"*ygg `z
vnoremap <leader>cf mzG$"*ygg `z

" *paste *line (above, below)
nnoremap <leader>pl o<Esc>"*p
nnoremap <leader>Pl O<Esc>"*p

