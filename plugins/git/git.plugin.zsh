# Aliases
alias g='git'
compdef g=git
alias ga='git add'
alias gaa='git add .'
alias gm='git merge --no-ff'
alias gmn='git merge --no-ff --no-commit'
alias gmf='git merge --ff-only'

alias gs='git status -s -b'
compdef _git gs=git-status

alias gl='git pull'
compdef _git gl=git-pull

alias glr='git pull --rebase'
compdef _git glr=git-pull

alias gr='git remote'
alias gf='git fetch && git fetch --tags'

alias gp='git push'
compdef _git gp=git-push

alias gd='git diff'
compdef _git gd=git-diff

alias gdm='git diff | grep "<<<<<"'
compdef _git gdm=git-diff

alias gdc='git diff --cached'
compdef _git gdc=git-diff

alias gst='git status'
compdef _git gst=git-status

alias gp='git push'

gdv() { git diff -w "$@" | view - }
compdef _git gdv=git-diff

alias gc='git commit -v'
compdef _git gc=git-commit

alias gca='git commit -v -a'
compdef _git gca=git-commit

alias gco='git checkout'
compdef _git gco=git-checkout

alias gcm='git checkout master'

alias gb='git branch'
compdef _git gb=git-branch

alias gba='git branch -a'
compdef _git gba=git-branch

alias gcount='git shortlog -sn'

alias gcp='git cherry-pick'
compdef _git gcp=git-cherry-pick

alias glg='git log --stat'
compdef _git glg=git-log

alias gls='git log --oneline'
compdef _git glg=git-log
alias glgg='git log --graph --max-count=5'
compdef _git glgg=git-log
alias gss='git status -s'
compdef _git gss=git-status
alias ga='git add'
compdef _git ga=git-add
alias gm='git merge'
compdef _git gm=git-merge
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'

alias gg='git log --graph'
compdef _git gg=git-log

alias gga='git log --graph --all --not refs/notes/build'
compdef _git gga=git-log

alias ggb='git log --show-notes=build --format=buildnotes'
compdef _git ggb=git-log

alias gt='git tag'

alias glg='git log --stat --max-count=5'
compdef _git glg=git-log

alias git='nocorrect noglob git'

#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# these aliases take advantage of the previous function
alias ggpull='git pull origin $(current_branch)'
compdef ggpull=git

alias ggpush='git push origin $(current_branch)'
compdef ggpush=git

alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
compdef ggpnp=git
