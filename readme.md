# Vim Configuration (Config-based)

This repository contains a Vim configuration using `~/.config/vim` structure with Vim-Plug for plugin management.

## Prerequisites

- Vim installed
- Git installed
- Curl or wget (for Vim-Plug installation)
- Optional: Node.js, ripgrep, fzf, and other dependencies for plugins like `coc.nvim`.

## Installation

fast way: 
```
curl -fsSL https://raw.githubusercontent.com/PoutineSyropErable/config_vim/main/install.sh | bash
```

### 1. Clone the repository

```bash
# Backup existing ~/.config/nvim if it exists, using numbered backups (~1, ~2, etc.)
[ -d ~/.config/vim ] && mv --backup=numbered ~/.config/vim ~/.config/vim_backup
git clone https://github.com/PoutineSyropErable/config_vim.git ~/.config/vim


[ -f ~/.vimrc ] && mv --backup=numbered ~/.vimrc ~/.vimrc.bak
ln -s ~/.config/vim/.vimrc ~/.vimrc 

#optional 
cd ~/.config/vim
```


### 2. Install Vim-Plug (if not already installed)
```bash
# Using curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


```

```bash
wget -O ~/.vim/autoload/plug.vim \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

###  3. Install Plugins
from the command line: 

```bash
vim +PlugInstall +qall

```


Open Vim and run:
```vim 
:PlugInstall
```

to update plugins: 

```vim 
:PlugUpdate
```



### 4. Fallback (if Vim-Plug installation or plugins fail)
```bash

git clone https://github.com/PoutineSyropErable/dot_vim.git ~/.vim
```


if no github access: 

```

git clone https://github.com/PoutineSyropErable/dot_vim.git ~/to_upload
upload --local-path=~/to_upload --remote-path=~/.vim
```

upload isn't a command, but you can tar the file and untar it. 

```bash 
# on the local machine
tar -czf ~/to_upload.tar.gz -C ~/ to_upload
upload ~/to_upload.tar.gz 

# on the remote machine: 
mkdir -p ~/.vim
tar -xzf ~/to_upload.tar.gz -C ~/.vim --strip-components=1

```
