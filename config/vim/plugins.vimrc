call plug#begin('~/.vim/plugged')

" use single quotes
Plug 'tomtom/tcomment_vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree'
Plug 'luochen1990/rainbow'
" Initialize plugin system
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lightline
let g:lightline = { 'colorscheme': 'default', }               "vim-lightline
set laststatus=2                                                "vim-lightline
set noshowmode     
