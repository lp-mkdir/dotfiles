# Change the username
export ZSH="/Users/luispacheco/.oh-my-zsh"

ZSH_THEME="avit"

plugins=(
  git
  bundler
  dotenv
  osx
  rake
  web-search
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# user configuration
# -------------------------------------------------------------------
# Mac helper aliases
# -------------------------------------------------------------------

# Delete auto-generated `.DS_Store` files
alias deleteDSFiles="find . -name '.DS_Store' -type f -delete"

# Flush the DNS cache (helpful if you’re playing with local DNS)
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
alias c="code .";
alias ll="ls -1a";
alias ..="cd ../";
alias ..l="cd ../ && ll";
alias pg="echo 'Pinging Google' && ping www.google.com";
alias de="cd ~/Desktop";
alias cc="cd ~/code";
alias ccd="cd ~/code && cd "
# Show/hide hidden files (starting with a `.`)
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias deleteDSFiles="find . -name '.DS_Store' -type f -delete"

## git aliases
function gcc { git commit -m "$@"; }
alias gcm="git checkout master";
alias gs="git status";
alias gpull="git pull";
alias gf="git fetch";
alias gfa="git fetch --all";
alias gf="git fetch origin";
alias gpush="git push";
alias ga="git add .";
alias gaa="git add -A";
alias gb="git branch";
alias gbr="git branch remote"
alias gfr="git remote update"
alias gbn="git checkout -B "
alias grf="git reflog";
alias grh="git reset HEAD~" # last commit
alias gac="git add . && git commit -a -m "
alias gsu="git gpush --set-upstream origin "
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-comm$
export PATH="/usr/local/opt/node@10/bin:$PATH"
source /Users/luispacheco/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/luispacheco/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Gatsby
alias gc="gatsby clean"
alias gd="gatsby develop"
alias gcd="gatsby clean && develop"

## youtube-dl
alias ybv="youtube-dl -f 'bestvideo,bestaudio' -o '%(title)s.f%(format_id)s.%(ext)s'"

## from Jason ------------------

# -------------------------------------------------------------------
# Git stuff
# -------------------------------------------------------------------

# Use hub to make git more powerful (https://hub.github.com/)
alias git=hub

# Shortcut to checkout master and pull from upstream
alias gu="git checkout master && git pull upstream master"

# Clean, compact git status
alias s="git status -sb"

# leklouis
alias gcd="git checkout dev"

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm