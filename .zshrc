# Path
PATH=~/bin:$PATH

export VISUAL=nvim
export EDITOR="$VISUAL"

bindkey "^l" forward-word
bindkey -e  # emac type keybind

# no beep sound
setopt no_beep

# History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt hist_ignore_all_dups

# Use modern completion system
autoload -Uz compinit
compinit


# linuxbrew hook
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# starship hook
eval "$(starship init zsh)"

# miniconda hook
eval "$($HOME/.miniconda/bin/conda shell.zsh hook)"

# direnv hook
eval "$(direnv hook zsh)"

# ssh-agent hook
eval "$(ssh-agent)" 1> /dev/null

# zsh-autosuggestions hook
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Alias
alias vi='nvim'
alias ls="ls --color"
