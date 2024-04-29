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
git clone --recurse-submodules https://github.com/efrikin/.vim.git $HOME/.vim
```

```bash
mkdir -p ~/.local/share/fonts && cd $_
curl -Lo- https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/LiberationMono.tar.xz | tar xJ-
```

