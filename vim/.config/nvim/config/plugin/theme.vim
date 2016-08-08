call dein#add('mhartington/oceanic-next')

syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme OceanicNext
set background=dark

if dein#tap('vim-airline') "{{{
  let g:airline_powerline_fonts=1
  set laststatus=2
  let g:airline_theme='oceanicnext'
endif "}}}