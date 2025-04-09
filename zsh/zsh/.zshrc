# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Powerlevel10k theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(git)

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt share_history
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt correct

# Keybindings
bindkey -e

# Completion
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' verbose true
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Aliases
alias ls='eza --tree --level=1 --icons'
alias g++='g++ -Wall -Wextra -pedantic -std=c++20'
alias gitlog='git log --oneline --decorate --graph --all'

# Syntax highlighting and autosuggestions
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set language
export LANG=en_US.UTF-8

# Set editor
export EDITOR=vim

# Prompt
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
