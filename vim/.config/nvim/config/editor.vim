set showmatch                   " Show matching brackets/parenthesis
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase
set number
set noswapfile

" =======================
set smartindent
set autoindent
filetype indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab
" =======================

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" switch cwd
autocmd BufEnter * silent! lcd %:p:h
