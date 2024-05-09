" keymap >>
nnoremap <space> za
" insert mode map"
inoremap jk <esc>
inoremap ii <esc>

" normal mode map"
nnoremap <silent> <C-@>  :<c-u>put!=repeat([''],v:count)<bar>']+1<cr>
" nnoremap <silent> ]<space>  :<c-u>put =repeat([''],v:count)<bar>'[-1<cr>]]
" NERDTree settings
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>
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

" editor mapping
nnoremap <leader>t <C-w>w
nnoremap <leader>w <C-w>

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
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

