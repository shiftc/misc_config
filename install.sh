#!/bin/bash

CURRENT_DIR=`pwd`

lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
}

# use symblink
MYTIG_RC="$HOME/.tigrc"
MYTIG_THEME="$HOME/.tigrc.theme"
MYTMUX_CONF="$HOME/.tmux.conf"
MYGIT_CONF="$HOME/.gitconfg"

lnif $CURRENT_DIR/tigrc $MYTIG_RC
lnif $CURRENT_DIR/tigrc.theme $MYTIG_THEME
lnif $CURRENT_DIR/tmux.conf $MYTMUX_CONF
lnif $CURRENT_DIR/gitconfg $MYTGIT_CONF

echo "DONE"
