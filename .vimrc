" === Plugin manager ===
call plug#begin('$HOME/.vim/plugged')
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



source $HOME/.config/vim/keymaps.vim
source $HOME/.config/vim/options.vim
source $HOME/.config/vim/plugins/lsp.vim
source $HOME/.config/vim/plugins/comments.vim
source $HOME/.config/vim/plugins/buffer_airline.vim
source $HOME/.config/vim/plugins/telescope_equivalent.vim
