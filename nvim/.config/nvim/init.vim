call plug#begin('~/.vim/plugged')

Plug 'jacoborus/tender.vim'

Plug 'airblade/vim-gitgutter'

Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-vinegar'
Plug 'sodapopcan/vim-twiggy'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'

" TS
Plug 'w0rp/ale'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/denite.nvim'
Plug 'vim-airline/vim-airline'

call plug#end()
let g:airline#extensions#ale#enabled = 1
let g:deoplete#enable_at_startup = 1
let g:airline_powerline_fonts = 1
let mapleader = "\<Space>"

" Splits
set splitbelow
set splitright

" Theme
syntax enable
colorscheme tender
let g:airline_theme = 'tender'

" Editor conf
" turn absolute line numbers on
set encoding=utf-8
set relativenumber
set nu
set list listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab

let g:tagbar_type_typescript = {                                                  
  \ 'ctagsbin' : 'tstags',                                                        
  \ 'ctagsargs' : '-f-',                                                           
  \ 'kinds': [                                                                     
    \ 'e:enums:0:1',                                                               
    \ 'f:function:0:1',                                                            
    \ 't:typealias:0:1',                                                           
    \ 'M:Module:0:1',                                                              
    \ 'I:import:0:1',                                                              
    \ 'i:interface:0:1',                                                           
    \ 'C:class:0:1',                                                               
    \ 'm:method:0:1',                                                              
    \ 'p:property:0:1',                                                            
    \ 'v:variable:0:1',                                                            
    \ 'c:const:0:1',                                                              
  \ ],                                                                            
  \ 'sort' : 0                                                                    
\ }                                                                               
" Keymaps
nnoremap <silent> <leader>f :GFile<cr>
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR><Paste>
nmap <leader>n :TSDefPreview<CR>
nmap <leader>N :TSDef<CR>
nmap <leader>r :TSRefs<CR>
noremap <Leader>s :w<CR>
