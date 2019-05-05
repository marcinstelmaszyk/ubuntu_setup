
## HSTR - Bash shell history suggest box ##
## https://github.com/dvorka/hstr/       ##
# Bind to Ctrl+R shortcut
# Enable coloring, set raw-history to be the default view
bind '"\C-r": "\e0ihstr -- \C-j"'
export HSTR_CONFIG=hicolor,raw-history-view

## DIRB - Directory Bookmarks for BASH ##
## https://github.com/icyfork/dirb     ##
source ~/.bashDirB
