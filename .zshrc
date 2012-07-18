# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="eddie-yellow-thunder"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git ruby rails)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export FLEX_HOME=~/SDK/flex_sdk
export PATH=$HOME/.cabal/bin:$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$FLEX_HOME/bin
export EDITOR='/usr/bin/vim'
eval "$(rbenv init -)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

alias rake="noglob rake"
alias irb="irb --simple-prompt"
alias vi="vim"

# shortcuts for git
alias gaa="git add ."
alias gs="git status"
alias gl="git log"
alias gc="git commit"

# some dirty keys for myself
alias :tabe='tabe'
alias :q='exit'
alias :e='vi'

# alias for tmux
alias tmux="tmux -2"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# config for z
. `brew --prefix`/etc/profile.d/z.sh
function precmd () {
  z --add "$(pwd -P)"
}
