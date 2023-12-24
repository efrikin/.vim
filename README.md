# .vim

The repository contains configuration files for `Vim` editor and It also makes
the editor minimalistic.

`.vim/vimrc` contains settings for three plugins:

* vim-commentary
* vim-lsc
* vim-surround

## Requirements

- `Vim` requires `clipboard` or `xterm_clipboard` support for access to system
clipboard
- [statusline](source/statusline.vim) require installed
[Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) for displaing icons

## Usage

### Fedora

#### Installing

```bash
dnf install vim-X11
alias vim='vimx'
vim --version | grep clipboard
```

#### Configuration

```bash
git clone --recurse-submodules repo $HOME/.vim
```

```bash
mkdir -p ~/.local/share/fonts
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/LiberationMono.zip
# unzip and move to ~/.local/share/fonts
```

