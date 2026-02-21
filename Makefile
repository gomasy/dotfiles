# Existence check
BVI    := $(shell which bvi 2> /dev/null)
GPG    := $(shell which gpg 2> /dev/null)
PWLINE := $(shell which powerline 2> /dev/null)
RUBY   := $(shell which ruby 2> /dev/null)
TERM   := $(shell which terminator 2> /dev/null)
TMUX   := $(shell which tmux 2> /dev/null)
NEOVIM := $(shell which nvim 2> /dev/null)
X      := $(shell which X 2> /dev/null)
ZSH    := $(shell which zsh 2> /dev/null)

# Git signing options
GPGSIGN ?= false

# Git user settings (base64-encoded to avoid plain text exposure in public repo)
GIT_NAME_B64    := R29tYXN5
GIT_EMAIL_B64   := bnlhbkBnb21hc3kuanA=
GIT_SIGKEY_B64  := MDJCRTdGMzlEOTc4QUM3RQ==

TARGETS := git

ifdef BVI
TARGETS += bvi
endif

ifdef GPG
TARGETS += gpg
endif

ifdef PWLINE
TARGETS += powerline
endif

ifdef RUBY
TARGETS += ruby
endif

ifdef TMUX
TARGETS += tmux
endif

ifdef NEOVIM
TARGETS += nvim
endif

ifdef X
TARGETS += x11
endif

ifdef TERM
TARGETS += terminator
endif

ifdef ZSH
TARGETS += zsh
endif

.PHONY: install bvi git gpg nvim powerline ruby terminator tmux x11 zsh

install:
	chmod 700 ${PWD}/.config ${PWD}/.gnupg ${PWD}/.ssh
	$(MAKE) $(TARGETS)

bvi:
	ln -sf ${PWD}/.bvirc ${HOME}/.bvirc

git:
	mkdir -p -m 700 ${HOME}/.ssh
	ln -sf ${PWD}/.ssh/config ${HOME}/.ssh/config
	ln -sf ${PWD}/.gitconfig ${HOME}/.gitconfig
	printf '[user]\n\tname = %s\n\temail = %s\n\tsigningkey = %s\n' \
		$$(echo $(GIT_NAME_B64) | base64 -d) \
		$$(echo $(GIT_EMAIL_B64) | base64 -d) \
		$$(echo $(GIT_SIGKEY_B64) | base64 -d) \
		> ${HOME}/.gitconfig.local
	$(if $(filter true,$(GPGSIGN)),printf '[commit]\n\tgpgsign = true\n' >> ${HOME}/.gitconfig.local)
	chmod 600 ${HOME}/.gitconfig.local

gpg:
	mkdir -p ${HOME}/.gnupg
	ln -sf ${PWD}/.gnupg/gpg-agent.conf ${HOME}/.gnupg/gpg-agent.conf

nvim:
	ln -sf ${PWD}/.config/nvim ${HOME}/.config/nvim

powerline:
	mkdir -p -m 700 ${HOME}/.config
	ln -sf ${PWD}/.config/powerline ${HOME}/.config/powerline

ruby:
	ln -sf ${PWD}/.gemrc ${HOME}/.gemrc

terminator:
	mkdir -p -m 700 ${HOME}/.config
	ln -sf ${PWD}/.config/terminator ${HOME}/.config/terminator

tmux:
	ln -sf ${PWD}/.tmux.conf ${HOME}/.tmux.conf

x11:
	ln -sf ${PWD}/.xinitrc ${HOME}/.xinitrc
	ln -sf ${PWD}/.xprofile ${HOME}/.xprofile

zsh:
	ln -sf ${PWD}/.zshrc ${HOME}/.zshrc
