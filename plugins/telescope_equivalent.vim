" ---------------------------
" Helper functions
" ---------------------------

" Get project root (global function)
function! GetProjectRoot()
  " Try git root
  let l:git_root = system('git rev-parse --show-toplevel 2>/dev/null')
  if v:shell_error == 0
    return substitute(l:git_root, '\n', '', 'g')
  endif
  return getcwd()
endfunction

" ---------------------------
" Commands
" ---------------------------

" Find files in project root
command! -bang ProjectFiles
  \ call fzf#vim#files(GetProjectRoot(), <bang>0)



function! GetGitRoot()
  return systemlist('git -C ' . shellescape(expand('%:p:h')) . ' rev-parse --show-toplevel')[0]
endfunction

command! -bang -nargs=* ProjectRg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case ' . shellescape(<q-args>),
  \   fzf#vim#with_preview({'dir': GetGitRoot()}),
  \   <bang>0)


" ---------------------------
" Key mappings
" ---------------------------

" Fuzzy find files
nnoremap <leader>ff :Files<CR>

" Fuzzy search in git project (grep)
nnoremap <leader>fF :GFiles<CR>

" Fuzzy find files in project
nnoremap <leader>ft :ProjectFiles<CR>

" Search word occurrence in current directory
nnoremap <leader>fg :Rg<CR>

" Search word occurrence in project
nnoremap <leader>fG :ProjectRg<CR>

" Fuzzy find buffers
nnoremap <leader>fb :Buffers<CR>

" Search current WORD under cursor in current directory
nnoremap gw :Rg <C-R><C-W><CR>

" Search current WORD under cursor in project root
" Use a function that calls fzf#vim#grep
function! ProjectRgWordUnderCursor()
  call fzf#vim#grep(
        \ 'rg --column --line-number --no-heading --color=always --smart-case ' . shellescape(expand('<cWORD>')),
        \ fzf#vim#with_preview({'dir': GetGitRoot()}),
        \ 0)
endfunction

" Map to gW
nnoremap gW :call ProjectRgWordUnderCursor()<CR>

