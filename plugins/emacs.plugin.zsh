alias ec='/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/bin/emacsclient'
alias e=openemacs


function openemacs {
    if [ -f ~/.emacsserver ]; then
        ec $1
    else
        open -a /usr/local/Cellar/emacs/HEAD/Emacs.app $1
    fi
}
