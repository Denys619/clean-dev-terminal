syntax on           " Enable syntax highlighting
set number          " Show line numbers
set tabstop=4       " Set tab width to 4 spaces
set shiftwidth=4
set expandtab       " Convert tabs to spaces
set autoindent      " Auto-indent new lines
set hlsearch
set smartindent
set autoindent
set clipboard=unnamedplus

nnoremap <C-s> :w<CR>      " Ctrl+S for save
nnoremap <C-q> :q<CR>      " Ctrl+Q for exit

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

call plug#end()

colorscheme gruvbox
set background=dark

hi Normal guibg=NONE ctermbg=NONE

" Autocompletions by TAB
inoremap <silent><expr> <TAB> pumvisible() ? coc#_select_confirm() : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

" Show autocompletions
set completeopt=menuone,noinsert,noselect
set shortmess+=c

" disable Vim tips
set omnifunc=
