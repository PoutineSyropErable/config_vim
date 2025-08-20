" === Plugin manager ===

source $HOME/.config/vim/pre_config.vim

call plug#begin('$HOME/.vim/plugged')
" Plug 'tpope/vim-commentary'
Plug 'preservim/nerdcommenter'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Telescope Equivalent
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 


" Optional: File icons
Plug 'ryanoasis/vim-devicons'

 Plug 'prabirshrestha/vim-lsp'
 Plug 'prabirshrestha/vim-lsp-settings'
 Plug 'prabirshrestha/asyncomplete.vim'
 Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()



source $HOME/.config/vim/keymaps.vim
source $HOME/.config/vim/options.vim
source $HOME/.config/vim/plugins/comments.vim
source $HOME/.config/vim/plugins/buffer_airline.vim
source $HOME/.config/vim/plugins/telescope_equivalent.vim
source $HOME/.config/vim/plugins/lsp.vim
