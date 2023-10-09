# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="random"

# ohmyzsh tmux plugin config
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=true

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bundler tmux)

# You may need to manually set your language environment
export LANG="en_US.UTF-8"
# export LANG=zh_CN.UTF-8
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LESSCHARSET="utf-8"

# mute system
unsetopt beep

# aliases
alias ls="ls --color=auto"
alias ll="ls -al"
alias grep="grep --color=auto"
alias puml="plantuml -charset UTF-8"
alias pumlsvg="plantuml -charset UTF-8 -svg"

alias e="exit"
alias pn="pnpm"
alias so="source"
alias weather="curl wttr.in/guangzhou"
alias plp="ps -ef | grep autossh"
alias klp="kill $(ps -ef | grep autossh | awk 'NR==1{print $2}')"
alias ys="yarn run start"

# alias quick jump
alias gh="cd $HOME"
alias ghc="cd $HOME/Code"
alias gws="cd $HOME/WorkSpace"
alias gge="cd $HOME/Gitee"
alias ghk="cd $HOME/Code/bak"
alias ghb="cd $HOME/Code/blog"

# alias quick start server
alias blog="cd $HOME/Code/blog; bash ./start.sh"
alias stopblog="cd $HOME/Code/blog; bash ./stop.sh"

# alias file
export OH_MY_ZSH="$HOME/.oh-my-zsh"
export zshrc="$HOME/.zshrc"
export initvim="$HOME/.config/nvim/init.vim"

# need to install proxychains4, see https://github.com/rofl0r/proxychains-ng
alias pc="proxychains4"
# need to install neofetch, see https://github.com/dylanaraps/neofetch
alias neo="neofetch"
# need to install ranger, see https://github.com/ranger/ranger
alias R="ranger"
alias py="python3"

# Install Ruby Gems
export GEM_HOME="$HOME/.local/share/gem"
export PATH="$GEM_HOME/bin:$PATH"

# load custom config
if [ -f ~/.my_rc ]; then
  source ~/.my_rc
fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.local/bin:$PATH"

# 启用 oh-my-zsh
source $ZSH/oh-my-zsh.sh

export VISUAL=nvim
export EDITOR=nvim

# install electron from taobao
export ELECTRON_MIRROR=https://npmmirror.com/mirrors/electron/
export ELECTRON_BUILDER_BINARIES_MIRROR=https://npmmirror.com/mirrors/electron-builder-binaries/

# 登录远程系统
alias login="ssh $user@$host"

# 开启远程服务器代理
alias lp="autossh -M 7700 -D 7891 $user@$host -N -f"

