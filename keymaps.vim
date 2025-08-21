" ===== Minimal Vimscript Keymaps =====

" Leader
let mapleader = " "

if has('unix')
    " Disable Ctrl-s / Ctrl-q terminal flow control
    silent !stty -ixon
endif


" ---------------- Exit Insert/Visual Mode
inoremap jk <Esc>
inoremap JK <Esc>
inoremap jl <Esc>
inoremap JL <Esc>
vnoremap jk <Esc>
vnoremap JK <Esc>
vnoremap jl <Esc>
vnoremap JL <Esc>

" ---------------- Movement Keys (basic remap)
nnoremap j h
nnoremap k j
nnoremap i k
nnoremap h i
nnoremap J _
nnoremap L $
nnoremap I H
nnoremap K L
nnoremap H I

vnoremap j h
vnoremap k j
vnoremap i k
vnoremap h i
vnoremap J _
vnoremap L $
vnoremap I H
vnoremap K L
vnoremap H I

" ---------------- Page Navigation
nnoremap <CR> o<Esc>

" map Ctrl+d to scroll down 1/2 screen. Ctrl+e up 1/2 screen
nnoremap <C-d> <C-d>
nnoremap <C-e> <C-u>

" scroll down/up one line (change the viewport)
nnoremap <C-f> <C-e>
nnoremap <C-r> <C-y>

"repair redo:
nnoremap <C-y> <C-r>
nnoremap R <C-r>

" repair 'enter replace mode'
nnoremap <leader>R R

" ---------------- Indent
nnoremap <Tab> >>
nnoremap <S-Tab> <<
vnoremap <Tab> >>
vnoremap <S-Tab> <<

" ---------------- Macros
nnoremap b q
nnoremap « @

" ---------------- Word Navigation
nnoremap w w
nnoremap W W
nnoremap s ge
nnoremap S gE
nnoremap e e
nnoremap q b
nnoremap Q B

vnoremap w w
vnoremap s ge
vnoremap S gE
vnoremap e e
vnoremap q b
vnoremap Q B

" ---------------- Clipboard
nnoremap <leader>C "+yy
vnoremap <leader>C "+yy
nnoremap <leader>P "+p
vnoremap <leader>P "+p


nnoremap <C-c> "+y
nnoremap <C-x> "+d
vnoremap <C-c> "+y
vnoremap <C-x> "+d
nnoremap <C-V> "+p
vnoremap <C-V> "+p


nnoremap <leader>fh :nohlsearch<CR>
nnoremap <leader>fH :nohlsearch<CR>
nnoremap <leader>H :nohlsearch<CR>

" Select all
nnoremap <C-a> ggVG
nnoremap <C-w>a ggVG
nnoremap <C-s>a ggVG

" Delete to black hole
vnoremap <BS> "_d

" ---------------- Number increment
nnoremap <leader>y <C-a>

" ---------------- Split resizing
nnoremap <C-Up> :resize +5<CR>
nnoremap <C-Down> :resize -5<CR>
nnoremap <C-Left> :vertical resize -5<CR>
nnoremap <C-Right> :vertical resize +5<CR>
nnoremap <C-w>= <C-w>=
nnoremap <C-s>= <C-w>=

" ---------------- Split creation
nnoremap <C-w>h :vsplit<CR>
nnoremap <C-w>v :split<CR>

nnoremap <C-s>h :vsplit<CR>
nnoremap <C-s>x :q<CR>

" ---------------- Replace functions (simple placeholders)
nnoremap <C-g> :echo "Replace with confirmation"<CR>
nnoremap <C-h> :echo "Replace with input"<CR>
nnoremap <leader>rc :echo "Replace with confirmation"<CR>
nnoremap <leader>ry :echo "Replace with input"<CR>

" ---------------- Jump list
nnoremap <C-o> <C-o>
nnoremap <C-p> <C-i>
nnoremap <leader>jb <C-o>
nnoremap <leader>jf <C-i>

