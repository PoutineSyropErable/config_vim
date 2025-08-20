" Enable default mappings (optional)
let g:NERDCreateDefaultMappings = 0  " we'll define our own

" Use gc for motions (visual & operator pending)
" Line comment toggle
nnoremap <silent> gcc :call nerdcommenter#Comment('n', 'toggle')<CR>
vnoremap <silent> gc :call nerdcommenter#Comment('x', 'toggle')<CR>

" Operator-pending motion example:
" gc{motion} => toggle comment for motion
onoremap gc :<C-U>call nerdcommenter#Comment('o', 'toggle')<CR>

