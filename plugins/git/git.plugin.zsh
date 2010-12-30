# Aliases
alias g='git'
alias ga='git add'
alias gaa='git add .'
alias gm='git merge --no-ff'
alias gmf='git merge --ff-only'
alias gs='git status'
alias gl='git pull'
alias glr='git pull --rebase'
alias gr='git remote'
alias gf='git fetch'
alias gp='git push'
alias gd='git diff'
alias gdm='git diff | grep "<<<<<"'
alias gdc='git diff --cached'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a -v'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias glg='git log --stat'
alias gg='git log --graph'
alias gco='git checkout'
alias gsv='git svn'
alias gt='git tag'

#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# these aliases take advangate of the previous function
alias ggpull='git pull origin $(current_branch)'
alias ggpush='git push origin $(current_branch)'
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
