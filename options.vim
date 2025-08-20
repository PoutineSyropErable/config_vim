" ======================================
" Catppuccin colorscheme
" ======================================
set background=dark
set termguicolors

" Set the flavor you want: mocha, latte, frappe, macchiato
colorscheme catppuccin_mocha

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
set wrap               " don't wrap lines
set noswapfile         " disable swap files

" Tabs and indentation
set tabstop=4
set shiftwidth=4
set shiftround
set noexpandtab        " use actual tabs
set autoindent
set smartindent

" Mouse support
set mouse=nvc
" Vim may not support 'mousemoveevent'; you can remove if it errors
" set mousemoveevent

" ======================================
" Line numbers
" ======================================
set number             " show absolute line number on cursor line
set relativenumber     " show relative numbers for other lines
" Optional: highlight current line number differently (if colorscheme supports)
" highlight CursorLineNr ctermfg=Green guifg=#00ff00

" ======================================
" Searching
" ======================================
set ignorecase         " case-insensitive searches
set smartcase          " override if uppercase used

" ======================================
" List characters
" ======================================
set nolist
set listchars=tab:>-,trail:·,space:·,eol:¬,precedes:«,extends:»

" ======================================
" Undo
" ======================================
set undofile
if !isdirectory(expand("~/.vim/undo"))
    call mkdir(expand("~/.vim/undo"), "p")
endif
set undodir=~/.vim/undo

" ======================================
" Format options
" ======================================
" Don't auto-insert comment leaders on new lines
autocmd BufEnter * setlocal formatoptions-=cro

" ======================================
" Sign definitions (DAP breakpoints)
" ======================================
" only if you have a plugin handling signs
sign define DapBreakpoint text=🛑 texthl=Error linehl= numhl=
sign define DapStopped text=✋ texthl=Title linehl= numhl=
sign define DapLogPoint text=📝 texthl=Question linehl= numhl=

" ======================================
" Verbose logging
" ======================================
if !isdirectory(expand("~/.vim_logs"))
    call mkdir(expand("~/.vim_logs"), "p")
endif
set verbosefile=~/.vim_logs/vim_log.txt
set verbose=12

" ======================================
" CSV plugin settings (if installed)
" ======================================
let g:csv_no_progress = 1
let g:csv_highlight_column = 'y'
let g:csv_highlight_row = 'y'

" ======================================
" Filetype overrides
" ======================================
" Force .cl files to open as opencl
au BufRead,BufNewFile *.cl set filetype=opencl

