# dotfiles

My personal dotfiles for Zsh, Neovim, tmux, Git, and more.

## Setup

```sh
git clone https://github.com/gomasy/dotfiles.git ~/dotfiles
cd ~/dotfiles
make install
```

To install a single configuration, run `make <target>`.
Available targets: `git`, `zsh`, `nvim`, `tmux`, `ruby`, `gpg`, `bvi`, `x11`, `powerline`, `terminator`.

`make install` skips configurations for tools that are not installed.
