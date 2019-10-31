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
Plug 'w0rp/ale'
Plug 'raimondi/delimitmate'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'sebastianmarkow/deoplete-rust'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" Initialize plugin system
call plug#end()

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

" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

 " Automatically enable mouse usage
set mouse=a
" Hide the mouse cursor while typing
set mousehide

" Ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}
