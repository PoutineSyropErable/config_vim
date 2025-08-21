 "======================================
 "Catppuccin colorscheme
 "======================================
set background=dark
set termguicolors

" Set the flavor you want: mocha, latte, frappe, macchiato
colorscheme catppuccin_mocha

" Then add custom Python highlighting
augroup pythonCapitalHighlight
  autocmd!
  autocmd FileType python syntax match pythonClassType "\<[A-Z][a-zA-Z0-9_]*\>"
  autocmd FileType python highlight pythonClassType guifg=#F8E1AF gui=bold
  autocmd FileType python syntax match pythonConstant "\<[A-Z_][A-Z0-9_]*\>"
  autocmd FileType python highlight pythonConstant guifg=#FFA500 gui=bold
augroup END

" ======================================
" General settings
" ======================================
" Leader keys
let mapleader = " "
let maplocalleader = " "

" Editing behavior
set backspace=2        " make backspace more powerful
set showcmd            " show command in status line
set laststatus=2       " always show status line
set autowrite          " automatically save before commands
set cursorline         " highlight current line
set autoread           " reload files changed outside vim
set nowrap               " don't wrap lines
set noswapfile         " disable swap files

"" ======================================
"" Catppuccin line + number highlighting
"" ======================================

"" Highlight the current line with a subtle background
highlight CursorLine guibg=#313244 ctermbg=236

"" Dim normal line numbers
highlight LineNr guifg=#ef2f81 ctermfg=243

"" Make current line number stand out (Catppuccin green accent)
highlight CursorLineNr guifg=#a6e3a1 gui=bold ctermfg=120

"" Optional: color for the sign column (gutter)
highlight SignColumn guibg=#1e1e2e ctermbg=234

"" Optional: matching cursor column background
highlight CursorColumn guibg=#313244 ctermbg=236


"" Tabs and indentation
set tabstop=4
set shiftwidth=4
set shiftround
set noexpandtab        " use actual tabs
set autoindent
set smartindent

"" Mouse support
set mouse=nvc
"" Vim may not support 'mousemoveevent'; you can remove if it errors
" set mousemoveevent

"" ======================================
"" Line numbers
"" ======================================
set number             " show absolute line number on cursor line
set relativenumber     " show relative numbers for other lines
"" Optional: highlight current line number differently (if colorscheme supports)
highlight CursorLineNr ctermfg=Green guifg=#00ff00

"" ======================================
"" Searching
"" ======================================
set ignorecase         " case-insensitive searches
set smartcase          " override if uppercase used

"" ======================================
"" List characters
"" ======================================
set nolist
set listchars=tab:>-,trail:·,space:·,eol:¬,precedes:«,extends:»

"" ======================================
"" Undo
"" ======================================
set undofile
if !isdirectory(expand("$HOME/.vim/undo"))
    call mkdir(expand("$HOME/.vim/undo"), "p")
endif
set undodir=$HOME/.vim/undo

" ======================================
" Format options
" ======================================
" Don't auto-insert comment leaders on new lines
autocmd BufEnter * setlocal formatoptions-=cro

" ======================================
" Sign definitions (DAP breakpoints)
" ======================================

" ======================================
" Verbose logging
" ======================================
"if !isdirectory(expand("$HOME/.vim_logs"))
"	call mkdir(expand("$HOME/.vim_logs"), "p")
"endif
"set verbosefile=$HOME/.vim_logs/vim_log.txt
"set verbose=1

" ======================================
" CSV plugin settings (if installed)
" ======================================
let g:csv_no_progress = 1
let g:csv_highlight_column = 'y'
let g:csv_highlight_row = 'y'

"" ======================================
"" Filetype overrides
"" ======================================
"" Force .cl files to open as opencl
au BufRead,BufNewFile *.cl set filetype=opencl


" enable wildmenu (better CLI completion menu)
set wildmenu
" show matches as you type
set wildmode=list:longest,full

