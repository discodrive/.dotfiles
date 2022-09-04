# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/substrakt/.oh-my-zsh"

ZSH_THEME="agnoster"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
alias projects="cd ~/Projects"

# Misc
alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias publickey="pbcopy < ~/.ssh/id_rsa.pub"
alias cypress="./node_modules/.bin/cypress open"
alias tmuxconfig="vim ~/.tmux.conf"


# Git
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gpm="git pull --rebase origin main"
alias gdab="git branch --merged | egrep -v '(^\*|master|main|release)' | xargs git branch -d"

# Vim
alias vim="nvim"
alias v="nvim"

# Filesystem
alias c="code ."
alias o="open ."
alias ls="exa -a"
alias ll="exa -alh"
alias tree="exa --tree"

# Source local envvars
source ~/.dotfiles/zsh/envvars.zsh

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH
export PS1="\W \$""
export PATH="/usr/local/Cellar/ruby/2.7.1_2/bin:$PATH"
export PATH="/Users/substrakt/.composer/vendor/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# eval "$(starship init zsh)"
