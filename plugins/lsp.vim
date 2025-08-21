" === LSP Setup ===
let g:lsp_log_verbose = 1

" Enable LSP key mappings only when a buffer has LSP attached
augroup lsp_mappings
  autocmd!
  autocmd User lsp_buffer_enabled call s:setup_lsp_mappings()
augroup END

function! s:setup_lsp_mappings() abort
  nnoremap <buffer> <silent> gd <Plug>(lsp-definition)
  nnoremap <buffer> <silent> gr <Plug>(lsp-references)
  nnoremap <buffer> <silent> gi <Plug>(lsp-implementation)
  nnoremap <buffer> <silent> gt <Plug>(lsp-type-definition)
  nnoremap <buffer> <silent> K  <Plug>(lsp-hover)
  nnoremap <buffer> <silent> <leader>rn <Plug>(lsp-rename)
  nnoremap <buffer> <silent> <leader>f  <Plug>(lsp-format)
endfunction

" === Autocomplete Setup ===
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_hover = 1
let g:asyncomplete_auto_signature = 1

" Register LSP as a source safely after Vim starts
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

" Set omnifunc per filetype
autocmd FileType python,cpp,java,yaml,json setlocal omnifunc=lsp#complete

