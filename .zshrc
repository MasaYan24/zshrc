# Path
PATH=~/bin:$PATH

export VISUAL=nvim
export EDITOR="$VISUAL"

# History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

# starship hook
eval "$(starship init zsh)"

# miniconda hook
eval "$($HOME/miniconda/bin/conda shell.zsh hook)"

# zsh-autosuggestions hook
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Alias
alias vi='nvim'
alias ls="ls --color"