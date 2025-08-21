let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_suppress_hl_messages = 1
let g:airline#verbose = 0



nnoremap <silent> <C-n> :bnext<CR>
nnoremap <silent> <C-b> :bprevious<CR>
vnoremap <silent> <C-n> :bnext<CR>
vnoremap <silent> <C-b> :bprevious<CR>

nnoremap <silent> <leader>q :bdelete<CR>
vnoremap <silent> <leader>q :bdelete<CR>

" Map <leader>1..9 to switch to buffer 1..9
for i in range(1, 9)
  execute 'nnoremap <silent> <leader>' . i . ' :buffer ' . i . '<CR>'
  execute 'vnoremap <silent> <leader>' . i . ' :buffer ' . i . '<CR>'
endfor






