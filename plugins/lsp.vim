" === LSP Setup ===
let g:lsp_log_verbose = 1

" Key mappings (safe even if LSP server isn't attached yet)
nnoremap <silent> gd <Plug>(lsp-definition)
nnoremap <silent> gr <Plug>(lsp-references)
nnoremap <silent> gi <Plug>(lsp-implementation)
nnoremap <silent> gt <Plug>(lsp-type-definition)
nnoremap <silent> K <Plug>(lsp-hover)
nnoremap <silent> <leader>rn <Plug>(lsp-rename)
nnoremap <silent> <leader>f <Plug>(lsp-format)

" === Autocomplete Setup ===
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_hover = 1

" Register LSP as autocomplete source safely after Vim is ready
autocmd VimEnter * call asyncomplete#register_source({
      \ 'name': 'lsp',
      \ 'allow_list': ['*'],
      \ 'mark': 'L',
      \ 'complete': function('asyncomplete#sources#lsp#complete') })

" Completion key mappings
inoremap <silent><expr> <C-Space> asyncomplete#force_refresh()
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Omnifunc for filetypes
autocmd FileType python,cpp,java,yaml,json setlocal omnifunc=lsp#complete

