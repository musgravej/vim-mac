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

" window management (split)
" move window backwards
nnoremap <leader>wj :wincmd h<CR>
" move window forwards
nnoremap <leader>wk :wincmd l<CR>
nnoremap <leader>wl <C-w>99l  " Move cursor to the last window
nnoremap <leader>wh <C-w>99h  " Move cursor to the first window
nnoremap <leader>wu <C-w><Up>  " Move cursor up window
nnoremap <leader>wd <C-w><Down>  " Move cursor down window
nnoremap <leader>wn <C-w><C-x>  " Swap window to the right
nnoremap <leader>wx :close<CR>
nnoremap <leader>wc :close<CR>
nnoremap <leader>w= <C-w>=
nnoremap <leader>wsh <C-w>s
nnoremap <leader>wsv <C-w>v


" insert a space
nnoremap <leader><space> i<space><right><esc>
" nnoremap <silent> <localleader>h <Plug>(YCMToggleInlayHints)
" ctrl+p to toggle between previous windows (terminal)

" tab mapping
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>th  :tabfirst<CR>
nnoremap <leader>tk  :tabnext<CR>
nnoremap <leader>tj  :tabprev<CR>
nnoremap <leader>tl  :tablast<CR>
nnoremap <leader>tc  :tabclose<CR>
nnoremap <leader>tx  :tabclose<CR>
nnoremap <leader>tb :tabnew %<CR>  " create new tab from current buffer

" move lines up or down
nnoremap <C-S-i> :m .+1<CR>==
nnoremap <C-S-k> :m .-2<CR>==
inoremap <C-S-i> <Esc>:m .+1<CR>==gi
inoremap <C-S-k> <Esc>:m .-2<CR>==gi
vnoremap <C-S-i> :m '>+1<CR>gv=gv
vnoremap <C-S-k> :m '<-2<CR>gv=gv

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

