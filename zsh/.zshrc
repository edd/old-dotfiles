# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:~/scripts/:./node_modules/.bin/"

setopt NO_BEEP

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[red]%}#%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%} %{$fg[green]%}#%{$reset_color%}"
RPS1='[%*]'

plugins=(git grunt npm screen themes node history git-remote-branch archlinux tmux)

# Customize to your needs...
export EDITOR=vim
export VISUAL=vim
#export NODE_ENV=development
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/edd/.gem/ruby/2.1.0/bin:/home/edd/global_npm/bin:/home/edd/scripts/
export PATH=$(ruby -rubygems -e "puts Gem.user_dir")/bin:$PATH

# "Fix" 256 colors in gnome terminal
if [ "${COLORTERM}"="gnome-terminal" ]; then
	if [[ -z $TMUX ]]; then 
		export TERM=xterm-256color
	else
		export TERM=screen-256color
	fi
fi

alias g=git
alias gfg='git for-each-ref --sort=-committerdate refs/heads/'
source ~/.config/.zshenv


export NVM_DIR="/home/edd/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
