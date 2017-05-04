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
git:
config your git first

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
remember to config you ~/.gitconfig as you wish


## other tools prefered to install

### grep replacement
[ag](https://github.com/ggreer/the_silver_searcher):
```sh
sudo apt-get install silversearcher-ag
```

[rg](https://github.com/BurntSushi/ripgrep)

### YCM color_coded generator
[YCM-Generator](https://github.com/rdnetto/YCM-Generator)
```sh
config_gen.py PROJECT_DIR # generate .ycm_extra_conf.py
config_gen.py PROJECT_DIR -F cc # generate .color_coded
```

### vim plugins need to compile install
[YouCompleteMe](https://github.com/Valloric/YouCompleteMe):
```sh
python install.py --clang-completer
```

[color_coded](https://github.com/jeaye/color_coded):
```sh
cd ~/.vim/bundle/color_coded
mkdir build && cd build
cmake ..
make && make install # Compiling with GCC is preferred, ironically
```

[fzf](https://github.com/junegunn/fzf):
```sh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### a way to replace left CTRL and TAB
personally, I prefer relpace left CTRL and TAB, as CTRL used more often in my work env.
create a binary key `Scancode Map` in `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout`

![keyReplacement](https://github.com/shiftc/misc_config/blob/master/screenshots/keyReplacement.png?raw=true)
