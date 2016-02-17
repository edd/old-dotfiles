# Setup fzf
# ---------
if [[ ! "$PATH" == */home/edd/.fzf/bin* ]]; then
  export PATH="$PATH:/home/edd/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */home/edd/.fzf/man* && -d "/home/edd/.fzf/man" ]]; then
  export MANPATH="$MANPATH:/home/edd/.fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/edd/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/edd/.fzf/shell/key-bindings.zsh"

