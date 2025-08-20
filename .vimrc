" === Plugin manager ===
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'tpope/vim-commentary'
Plug 'preservim/nerdcommenter'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Telescope Equivalent
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 


" Optional: File icons
Plug 'ryanoasis/vim-devicons'

call plug#end()



source ~/.config/vim/keymaps.vim
source ~/.config/vim/options.vim
source ~/.config/vim/plugins/lsp.vim
source ~/.config/vim/plugins/comments.vim
source ~/.config/vim/plugins/buffer_airline.vim
source ~/.config/vim/plugins/telescope_equivalent.vim
