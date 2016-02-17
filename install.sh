function vundle {
  git clone https://github.com/gmarik/Vundle.vim.git /home/edd/.vim/bundle/Vundle.vim 
  vim +BundleInstall +qall
}

function fzf {
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
}
