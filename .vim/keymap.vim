" keymap >>
nnoremap <space> za
" insert mode map"
inoremap jk <esc>

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
tnoremap <leader>t <C-w>p
tnoremap <leader>w <C-w>

nnoremap <leader>t <C-w>p
nnoremap <leader>w <C-w>

