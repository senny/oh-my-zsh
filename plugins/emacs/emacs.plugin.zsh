alias ec='/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/bin/emacsclient'
alias e=openemacs

EDITOR='/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/bin/emacsclient'
export EDITOR

# configuration for emacs multi-term.el compatibility
bindkey "\ef"    forward-word
bindkey "\eb"    backward-word

function openemacs {
    if [ -f ~/.emacsserver ]; then
        ec $1
    else
        open -a /usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/Emacs $1
    fi
}
