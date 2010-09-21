alias pv=preview
alias cls='clear'

function tab() {
  osascript 2>/dev/null <<EOF
    tell application "System Events"
      tell process "Terminal" to keystroke "t" using command down
    end
    tell application "Terminal"
      activate
      do script with command "cd \"$PWD\"; $*" in window 1
    end tell
EOF
}

function flush_dns () {
  sudo dscacheutil -flushcache
}

function preview () {
  qlmanage -p $1 2> /dev/null
}

function dhcp_renew () {
  sudo ipconfig set en0 BOOTP;sudo ipconfig set en0 DHCP
}
