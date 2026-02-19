# dotfiles

My personal dotfiles for Zsh, Neovim, tmux, Git, and more.

## Setup

Clone this repository:

```sh
git clone https://github.com/gomasy/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

To install all configurations at once:

```sh
make install
```

To install a specific configuration:

```sh
make git
make zsh
make nvim
make tmux
make ruby
make gpg
make bvi
make x11
make powerline
make terminator
```

`make install` automatically detects installed tools and skips configurations for tools that are not available.
