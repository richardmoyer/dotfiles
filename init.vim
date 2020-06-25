set spell spelllang=en_us
set undofile
set encoding=utf-8

syntax on
syntax enable

" relative line numbers
set relativenumber

" copy paste
set clipboard+=unnamedplus
"
" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase
" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4

" leader key
let mapleader = ","

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'mbbill/undotree'
Plug 'yuttie/comfortable-motion.vim'
Plug 'tpope/vim-sensible'
Plug 'raimondi/delimitmate'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Nord colorscheme
colorscheme nord

" Nerdtree toggle
:map <leader>n :NERDTreeToggle<CR>
"NERDTree /home/richm/
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Goyo toggle
map <leader>g :Goyo<CR>

" FZF
map ; :Files<CR>

" Undotree
map <leader>n :NERDTreeToggle<CR>

 " Automatically enable mouse usage
set mouse=a
" Hide the mouse cursor while typing
set mousehide

