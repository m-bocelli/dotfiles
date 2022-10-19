" Plugins
" If the directory has 'nvim', then get the standard path to it and
" concatenate '/plugged' to complete the directory name, else check if there
" is a vim plugged folder.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Theme
Plug 'sonph/onehalf', { 'rtp': 'vim' }
" Necessary for telescope
Plug 'nvim-lua/plenary.nvim'
" Fuzzy finder
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" Status bar theme
Plug 'itchyny/lightline.vim'
" Language server config
Plug 'neovim/nvim-lspconfig'
" Marks where errors appear in code
Plug 'vim-scripts/errormarker.vim'
" nvim TreeSitter
Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()

syntax on
set t_Co=256

colorscheme onehalfdark
let g:lightline = { 'colorscheme': 'onehalfdark' }
" Backups, swaps, and undos
set directory=$HOME/.config/nvim/swapfile//
set backupdir=$HOME/.config/nvim/backup//
set undodir=$HOME/.config/nvim/undodir
set undofile
" General
set cursorline
set scrolloff=8
set number
set numberwidth=4
set noshowmode
set tabstop=4
set softtabstop=4
set shiftwidth=4
set clipboard+=unnamedplus
"Inserts spaces instead of tabs
set expandtab
set cindent
" Files use marker folding
set foldmethod=marker
set foldmarker={--,--}
" Search is NOT case sensistive unless capital letters are used
set ignorecase
set smartcase

set makeprg=g++\ -o\ %:r\ %

autocmd filetype cpp nnoremap <F9> :w <bar> :make<CR>
autocmd filetype cpp nnoremap <F10> :vs<bar>:terminal ./%:r<CR>
autocmd filetype cpp nnoremap <F11> :!./%:r<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
