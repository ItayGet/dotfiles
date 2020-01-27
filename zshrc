# set custom prompt
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# aliases
alias ls='ls --color'

# setting up history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# vim-like keys

# Include hidden files in autocomplete:
_comp_options+=(globdots)

# bindkey  "^[[7"   beginning-of-line
# bindkey  "^[[8"   end-of-line

mkcd () {
  mkdir "$1"
  cd "$1"
}

# syntax highlighting, must be last
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
