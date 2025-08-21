" === LSP Setup ===
let g:lsp_log_verbose = 1
let g:lsp_disable_auto_mappings = 1
let g:lsp_semantic_highlight = 1  " Enable semantic highlighting


if executable('pyright')
    " npm install -g pyright
    au User lsp_setup call lsp#register_server({
          \ 'name': 'pyright',
          \ 'cmd': {server_info->['pyright-langserver','--stdio']},
          \ 'allowlist': ['python'],
          \ })
endif

" Function to restore default Vim scrolling
function! s:restore_default_scrolling() abort
    " Remove LSP scroll mappings if they exist
    silent! nunmap <buffer> <C-d>
    silent! nunmap <buffer> <C-u>
    " Restore default Vim scrolling
    nnoremap <buffer> <C-d> <C-d>
    nnoremap <buffer> <C-u> <C-u>
endfunction

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif

    " Navigation & actions
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> $ <plug>(lsp-hover)

    " Scrolling (LSP-specific)
    nnoremap <buffer> <expr><c-r> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-f> lsp#scroll(-4)

    " Additional mappings
    nnoremap <buffer> <silent> <leader>Lr <Plug>(lsp-rename)
    nnoremap <buffer> <silent> <leader>f  <Plug>(lsp-format)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')

    " Restore normal scrolling after LSP maps its keys
    call s:restore_default_scrolling()
endfunction

augroup lsp_install
    au!
    " Call s:on_lsp_buffer_enabled only for registered languages
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" Ensure default Vim scrolling for all LSP buffers
augroup fix_lsp_scroll
    au!
    autocmd User lsp_buffer_enabled call s:restore_default_scrolling()
augroup END

