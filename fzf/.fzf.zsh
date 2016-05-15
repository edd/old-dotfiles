# Setup fzf
# ---------
if [[ ! "$PATH" == */home/edd/.config/nvim/repos/github.com/junegunn/fzf/bin* ]]; then
  export PATH="$PATH:/home/edd/.config/nvim/repos/github.com/junegunn/fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */home/edd/.config/nvim/repos/github.com/junegunn/fzf/man* && -d "/home/edd/.config/nvim/repos/github.com/junegunn/fzf/man" ]]; then
  export MANPATH="$MANPATH:/home/edd/.config/nvim/repos/github.com/junegunn/fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/edd/.config/nvim/repos/github.com/junegunn/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/edd/.config/nvim/repos/github.com/junegunn/fzf/shell/key-bindings.zsh"

