# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
export ZSH="/Users/$USER/.oh-my-zsh"

ZSH_THEME="avit"

plugins=(
  git
  bundler
  dotenv
  macos	
  rake
  web-search
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

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

# JobCloud
alias j='cd $(find ~/work/b2c-frontend.git/hackaton ~/work/b2c-frontend.git/chore ~/work/b2c-frontend.git/fix ~/work/b2c-frontend.git/feat ~/work/b2c-frontend.git/lab ~/work/b2c-frontend.git/perf ~/work/b2c-frontend.git/exp -type d -maxdepth 2 | fzf)'
alias ji='~/.local/bin/jc-installer'

## git aliases
function gcc { git commit -m "$@"; }
alias gcm="git checkout master"
alias gs="git status"
alias gpull="git pull"
alias gf="git fetch"
alias gfa="git fetch --all"
alias gf="git fetch origin"
alias gpush="git push"
alias ga="git add ."
alias gaa="git add -A"
alias gb="git branch"
alias gbr="git branch remote"
alias gfr="git remote update"
alias gbn="git checkout -B "
alias grf="git reflog"
alias grh="git reset HEAD~" # last commit
alias gac="git add . && git commit -a -m "
alias gsu="git gpush --set-upstream origin "
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-comm$"
alias v="nvim"
export PATH="/usr/local/opt/node@10/bin:$PATH"


## Gatsby
alias gc="gatsby clean"
alias gd="gatsby develop"
alias gacd="gatsby clean && develop"
## youtube-dl
alias ybv="youtube-dl -f 'bestvideo,bestaudio' -o '%(title)s.f%(format_id)s.%(ext)s'"

## from Jason ------------------
# -------------------------------------------------------------------
# Git stuff
# -------------------------------------------------------------------
# Use hub to make git more powerful (https://hub.github.com/)
alias git=hub
# Clean, compact git status
alias s="git status -sb"

# Luis Pacheco Config
alias gpp="/Users/$USER/bash/git/gpp.sh"
alias gpph="/Users/$USER/bash/git/gpph.sh"
alias gu="/Users/$USER/bash/git/gu.sh"
alias gcd="git checkout develop"
# JobCloud
alias jchusky="/Users/$USER/bash/git/husky.sh"
alias gjc="cd ~/code/b2c-frontend"

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='rg --hidden --no-ignore -l ""'
eval "$(pyenv init -)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
