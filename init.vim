" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf'

" Rust

" autocomplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Language Server Client
Plug 'autozimu/LanguageClient-neovim', {
\ 'branch': 'next',
\ 'do': 'bash install.sh',
\ }
let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ }

Plug 'rust-lang/rust.vim',         { 'for': 'rust' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


syntax enable
syntax on
colorscheme nord
set termguicolors

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set wrap breakindent
set encoding=utf-8
set relativenumber
set title
set wildmenu					" Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
set clipboard=unnamedplus       " Copy/paste between vim and other programs.

let g:airline_theme='nord'

" fzf-vim
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Type'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Character'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


let mapleader=","
nmap <leader>q :NERDTreeToggle<CR>
nmap \ <leader>q

" Deoplete configure
let g:deoplete#enable_at_startup = 1

" note that if you are using Plug mapping you should not use `noremap` mappings.
nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
" nmap <silent> <F2> <Plug>(lcn-rename)
autocmd FileType rust nmap <silent> gr <Plug>(lcn-rename)
" nmap <silent>K <Plug>(lcn-hover)
" nmap <silent> gd <Plug>(lcn-definition)

" Configure Rust formatter https://github.com/rust-lang/rust.vim#formatting-with-rustfmt
" autocmd Filetype rust nnoremap == :RustFmt<CR>
let g:rustfmt_autosave = 1
