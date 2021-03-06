# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dracula"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bundler)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
# export LANG=zh_CN.UTF-8

# aliases
alias ll='ls -alF'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# alias proxychains4
# need to install proxychains4, see https://github.com/rofl0r/proxychains-ng
alias pc="proxychains4"

# alias neofetch
# need to install neofetch, see https://github.com/dylanaraps/neofetch
alias neo="neofetch"

# alias ranger
# need to install ranger, see https://github.com/ranger/ranger
alias r="ranger"

# alias
# guangzhou weather
alias weather='curl wttr.in/guangzhou'

# mute system
unsetopt beep

# fix windows-wsl cursor display
alias cs='echo -n -e "\033[?25h"'
alias ch='echo -n -e "\033[?25l"'

