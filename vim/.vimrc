set nocompatible
filetype off
"Must be disabled for :BundleInstall
set shellslash

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'ekoeppen/taskpaper.vim'
Bundle 'gmarik/Vundle.vim'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'plasticboy/vim-markdown'
Bundle 'jnurmine/Zenburn'
Bundle 'othree/xml.vim'
Bundle 'othree/html5.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'ack.vim'
Bundle 'tpope/vim-fireplace'
Bundle 'jiangmiao/simple-javascript-indenter'
Bundle 'pangloss/vim-javascript'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'vim-scripts/tComment'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'vim-scripts/BufOnly.vim'
Bundle 'b4winckler/vim-angry'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'altercation/vim-colors-solarized'
Bundle 'wting/rust.vim'
Bundle 'cespare/vim-toml'
Bundle "marijnh/tern_for_vim"
Bundle "Valloric/YouCompleteMe"
Bundle "elixir-lang/vim-elixir"
Bundle "junegunn/fzf.vim"

call vundle#end()

let mapleader = "\<Space>"
let maplocalleader = ";"
"Indentation
filetype plugin indent on
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set fileformats=unix,dos
set fileformat=unix
set backspace=indent,eol,start
set hidden
set ruler
set number
set colorcolumn=80
set laststatus=2
set ignorecase
set smartcase

syntax on

"Make :W typo do what you want
command W :w

"Folding - unfold everything by default
au BufRead * normal zR
au FileType gitcommit setlocal foldlevel=99

set suffixesadd+=.js,.rb,.cs,.py

set encoding=utf8

"Maps space to clear search highlighting
nmap <SPACE> <SPACE>:noh<CR>

set backupdir=~/.backups/vim

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :ToggleGStatus<CR>

"Colorscheme settings
set background=dark
colorscheme Tomorrow-Night-Eighties 

"Use local vimrc to change this per-project
set ts=4 sw=4 sts=4 et

let g:ctrlp_root_markers = ['.ctrlp_root']
let g:ctrlp_custom_ignore = '\v[\/](node_modules|bower_components|build|out|resources\/public\/out)$'

set t_Co=256
