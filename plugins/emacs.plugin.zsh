alias ec='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient'
alias e=openemacs


function openemacs {
    if [ -f ~/.emacsserver ]; then
        ec $1
    else
        open -a emacs $1
    fi
}
