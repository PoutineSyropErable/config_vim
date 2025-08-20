
" === LSP Keymaps ===

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> K :call CocActionAsync('doHover')<CR>
" Go to type definition
nmap <silent> gt <Plug>(coc-type-definition)
" Go to file under cursor (Vim default)
nmap gf gf

nnoremap <silent> $ :call CocActionAsync('doHover')<CR>
nnoremap K $

" === Completion ===
" Trigger completion manually
inoremap <silent><expr> <C-Space> coc#refresh()

" Confirm completion with <CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Navigate popup menu
inoremap <expr> <Tab>   coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
