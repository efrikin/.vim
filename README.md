# .vim

The repository contains configuration files for `Vim` editor and It also makes the editor minimalistic.

`.vim/vimrc` contains settings for three plugins:

* vim-airline
* vim-commentary
* vim-lsc
* vim-surround 

## Install 

```bash
git clone --recurse-submodules repo $HOME/.vim
```

`Vim` requires `clipboard` or `xterm_clipboard` support for access to system clipboard

### Fedora

```bash
dnf install vim-X11
alias vim='vimx'
vim --version | grep clipboard
```
