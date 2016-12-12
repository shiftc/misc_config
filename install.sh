#!/usr/bin/env zsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Source ~/.zshrc because we need oh-my-zsh variables
source "$HOME/.zshrc"
CURRENT_DIR=`pwd`

# Red bold error
function error() {
  echo
  echo "$fg_bold[red]Error: $* $reset_color"
  echo
}

# Green bold message
function message() {
  echo
  echo "$fg_bold[green]Message: $* $reset_color"
  echo
}

lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
}

# use symblink
MYZSH_RC="$HOME/.zshrc"
MYTIG_RC="$HOME/.tigrc"
MYTIG_THEME="$HOME/.tigrc.theme"
MYTMUX_CONF="$HOME/.tmux.conf"
MYGIT_CONF="$HOME/.gitconfg"

lnif $CURRENT_DIR/zshrc $MYZSH_RC
lnif $CURRENT_DIR/tigrc $MYTIG_RC
lnif $CURRENT_DIR/tigrc.theme $MYTIG_THEME
lnif $CURRENT_DIR/tmux.conf $MYTMUX_CONF
lnif $CURRENT_DIR/gitconfg $MYTGIT_CONF

# If folder isn't exist, then make it
[ -d $ZSH_CUSTOM/plugins ] || mkdir $ZSH_CUSTOM/plugins
[ -d $ZSH_CUSTOM/themes ] || mkdir $ZSH_CUSTOM/themes

# clone plugins needed
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# am patches needed
cd $ZSH
git am $CURRENT_DIR/omz_patches/0001-hack-for-prompt-show-down-due-to-git-status-stuff.patch
git am $CURRENT_DIR/omz_patches/0002-add-my-OMZ-theme.patch

message "Done! Please, reload your terminal."
