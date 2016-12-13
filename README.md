# configs for linux console
## screenshots

vim with tmux:

![vim](https://github.com/shiftc/misc_config/blob/master/screenshots/vim-screen.png?raw=true)

cmdline:

![cmd](https://github.com/shiftc/misc_config/blob/master/screenshots/cmdline-screen.png?raw=true)

tig:

![tig](https://github.com/shiftc/misc_config/blob/master/screenshots/tig-screen.png?raw=true)

## Installation

### install prerequisites
vim:
vim 7.4 above prefered, with lua enabled

refer:
>[a guide for update vim](https://github.com/shiftc/vim_config/blob/master/update_vim.md)

zsh:
```sh
sudo apt-get install zsh
```

tig:
```sh
git clone git://github.com/jonas/tig.git
make prefix=/usr/local
sudo make install prefix=/usr/local
```

tmux:
```sh
sudo apt-get install tmux
```

### Clone this repo somewhere on your machine
```sh
./install.sh
```

### restart your terminal and enjoy


### other tools prefered to install

ag:
```sh
sudo apt-get install silversearcher-ag
```

[rg](https://github.com/BurntSushi/ripgrep)
