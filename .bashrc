#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vi='nvim'
alias grub-update='sudo grub-mkconfig -o /boot/grub/grub.cfg'
PS1='[\u@\h \W]\$ '
export TERMINAL='alacritty'
export LAUNCHER='rofi'


# export PATH="$PATH:/home/msuvorov/.spicetify"
export PATH="$PATH:$(go env GOPATH)/bin"
export PATH="$PATH:/home/msuvorov/.local/share/nvim/mason/staging/bacon/bin"
export PATH="$PATH:/home/msuvorov/.cache/.bun/bin"
export PATH="$PATH:/home/msuvorov/.local/share/rust-cargo/bin"
export PATH="$PATH:/usr/lib/llvm-18/bin"
export PATH="$PATH:/root/.bun/bin"
export GOBIN=$(go env GOPATH)/bin
export PATH=$PATH:$GOBIN
export PATH="/home/msuvorov/.local/bin:$PATH"

export DISPLAY=":0"


