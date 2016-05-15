let $NVIM_PLUGINS = "~/.config/nvim/config/plugin"

if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
  call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
  call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
endif

set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/
 call dein#begin(expand('~/.config/nvim'))

 for f in glob(expand("$NVIM_PLUGINS") . '/*.vim', 1, 1)   | exe 'source' f | endfor

if dein#check_install()
  call dein#install()
  let pluginsExist=1
endif

call dein#end()
