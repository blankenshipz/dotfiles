# Setup prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="$PATH:/usr/local/opt/fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */usr/local/opt/fzf/man* && -d "/usr/local/opt/fzf/man" ]]; then
  export MANPATH="$MANPATH:/usr/local/opt/fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null


# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.zsh"

# Search tool
# ------------
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

# Load fzf
# ------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Setup openssl dirs
# export OPENSSL_INCLUDE_DIR=`brew --prefix openssl`/include
# export OPENSSL_LIB_DIR=`brew --prefix openssl`/lib
# export DEP_OPENSSL_INCLUDE=`brew --prefix openssl`/include

# Setup an alias for managing this configuration
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Normal Aliases
alias ao='aws-okta exec'
alias aods='aws-okta exec ds'
alias tf='terraform'
alias scratch='mkdir -p ~/Code/scratchpad && cd ~/Code/scratchpad && nvim .'
alias todo='rg "(?:\*|-) \[ \]" ~/vimwiki/meetings'
alias todos='todo'
alias wiki='nvim ~/vimwiki/index.md'
alias gpfwl='git push --force-with-lease'
alias gpf='gpfwl'
alias dgb='docker run --rm -it -v ~/.ssh:/root/.ssh -v $PWD:/go/src/app -w /go/src/app golang:latest /bin/bash -c "go build"'
alias docker-go-build='dgb'

# Set vim as the editor
export EDITOR=vim
export VISUAL=vim

# GO Dev?
export GOPATH=$HOME/Code/go
export PATH=$PATH:$GOPATH/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/zach/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/zach/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/zach/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/zach/google-cloud-sdk/completion.zsh.inc'; fi
