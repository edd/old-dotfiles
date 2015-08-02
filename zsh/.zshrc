source ~/.zsh/settings.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/antigen.zsh
source ~/.zsh/bundle.zsh
source ~/.zsh/platforms/linux.zsh

[ -f ~/.zshrc.local ] && source ~/.zshrc.local
[ -f ~/.env ] && source ~/.env

export PATH=./node_modules/.bin:$PATH
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
[[ $TERM == urxvtc ]] && export TERM=urxvtc
