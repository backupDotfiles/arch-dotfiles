#
# ~/.bashrc
#

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias p='sudo pacman'
alias vim='nvim'

# prompts
PS1='\u@\h:\W\$ '

# env var
export EDITOR=nvim
export BROWSER=firefox
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export PATH="/usr/bin:/usr/local/bin:/usr/local/sbin:$HOME/.local/bin"

# start window manager
if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep bspwm || startx "$XDG_CONFIG_HOME/x11/xinitrc"
fi
