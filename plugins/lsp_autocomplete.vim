" === Autocomplete Setup ===
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_hover = 1
let g:asyncomplete_auto_signature = 1

" Register LSP as a source safely after Vim starts
autocmd VimEnter * call asyncomplete#register_source({
	\ 'name': 'lsp',
	\ 'allow_list': ['*'],
	\ 'mark': 'L',
	\ 'complete': function('asyncomplete#sources#lsp#complete'), 
    \ })


    " \ 'menu': function('g:ShowTypeHint'),
    " \ 'info': function('g:ShowDoc'),
" Global functions
function! g:ShowTypeHint(item)
  return get(a:item, 'detail', '')
endfunction

function! g:ShowDoc(item)
  return get(a:item, 'documentation', '')
endfunction


" Completion key mappings
inoremap <silent><expr> <C-Space> asyncomplete#force_refresh()
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" Change popup menu background
highlight Pmenu guibg=#1e1e2e guifg=#cdd6f4
highlight PmenuSel guibg=#313244 guifg=#f5c2e7
highlight PmenuSbar guibg=#313244
highlight PmenuThumb guibg=#f38ba8

