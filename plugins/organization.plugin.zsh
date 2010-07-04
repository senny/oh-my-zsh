function h () {
  cd ~/$1;
}

function c () {
  cd ~/Projects/$1;
}

#compdef h
function _h () {
  _files -W ~ -/
}

#compdef c
function _c () {
  _files -W ~/Projects -/
}

compdef _h h
compdef _c c
