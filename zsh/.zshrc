
# export PATH=$HOME/bin:/usr/local/bin:$PATH
source ~/.dotfiles/zsh/envvars.zsh

# Path to your oh-my-zsh installation.
export ZSH="/Users/$MACHINE_USER/.oh-my-zsh"

ZSH_THEME="agnoster"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
alias projects="cd $PROJECT_ROOT"

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
alias cd="z"
alias zz="z -"

export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$GOPATH/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PS1="\W \$"
export PATH="/usr/local/Cellar/ruby/2.7.1_2/bin:$PATH"
export PATH="/Users/$MACHINE_USER/.composer/vendor/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source "/Users/$MACHINE_USER/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
