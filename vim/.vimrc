call plug#begin('~/.vim/plugged')
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'christoomey/vim-tmux-navigator'	
	Plug 'chriskempson/vim-tomorrow-theme'
	Plug 'ekoeppen/taskpaper.vim'
	Plug 'othree/html5.vim'
	Plug 'scrooloose/syntastic'
	Plug 'scrooloose/nerdtree'
	Plug 'itchyny/lightline.vim'
	Plug 'bling/vim-bufferline'
	Plug 'mustache/vim-mustache-handlebars'
	Plug 'benmills/vimux'
call plug#end()

"Fuzzy finder
let g:fzf_action = {
  \ 'ctrl-m': 'e',
  \ 'ctrl-t': 'tabedit',
  \ 'alt-j':  'botright split',
  \ 'alt-k':  'topleft split',
  \ 'alt-h':  'vertical topleft split',
  \ 'alt-l':  'vertical botright split' }

let mapleader = "\<Space>"
let maplocalleader = ";"
filetype plugin indent on
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
set backupdir=~/.backups/vim

"Colorscheme settings
set t_Co=256
set background=dark
colorscheme Tomorrow-Night-Eighties

"Highlights
syntax on
set hidden
set ruler
set colorcolumn=80
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set list

"Editor layout
set ruler
set number
set colorcolumn=80
set laststatus=2
let g:bufferline_active_buffer_left = ''
let g:bufferline_active_buffer_right = ''
map <F2> :NERDTreeToggle<CR>
map <Leader>t :NERDTreeToggle<CR>

"Style
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_jump = 1
let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['jshint', 'jscs']
au BufNewFile,BufRead *.jsx let b:syntastic_checkers = ['jsxhint']
filetype plugin indent on
set autoindent

set fileformats=unix,dos
set fileformat=unix
set backspace=indent,eol,start

set ignorecase
set smartcase

set incsearch
set hlsearch

".trim().Bindings
:map <C-t> :FZF<CR>
