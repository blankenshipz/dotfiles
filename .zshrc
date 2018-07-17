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
export OPENSSL_INCLUDE_DIR=`brew --prefix openssl`/include
export OPENSSL_LIB_DIR=`brew --prefix openssl`/lib
export DEP_OPENSSL_INCLUDE=`brew --prefix openssl`/include

# Setup an alias for managing this configuration
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Normal Aliases
alias ao='aws-okta exec'
alias aods='aws-okta exec ds'
alias tf='terraform'
alias scratch='mkdir -p ~/Code/scratchpad && cd ~/Code/scratchpad && nvim .'
alias todo='rg "(?:\*|-) \[ \]" ~/vimwiki'
alias todos='todo'
alias wiki='nvim ~/vimwiki/index.md'

# Set vim as the editor
export EDITOR=vim
export VISUAL=vim

