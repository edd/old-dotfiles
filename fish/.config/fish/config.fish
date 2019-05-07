set fish_greeting ""
alias vi=nvim

export GPG_TTY=(tty)

set -x -U GOPATH $HOME/go
set -x -U GOBIN $GOPATH/bin

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent
