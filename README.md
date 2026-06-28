# 个人备份

- [测试颜色](#测试颜色)
- [deb-init](#deb-init)
- [deb-proxy](#deb-proxy)
- [prettierrc](#prettierrc)
- [foxyproxy](#foxyproxy)
- [init.vim](#initvim)
- [markdownlintrc](#markdownlintrc)
- [myzshrc](#myzshrc)
- [nvim](#nvim)
- [tmux](#tmux)
- [vimrc](#vimrc)
- [vscode-settings](#vscode-settings)
- [zshrc](#zshrc)
- [Windows](#windows)
  - [input.ahk](#inputahk)
  - [wechats](#wechats)
  - [win_sys_proxy](#win_sys_proxy)
  - [xiaohe.reg](#xiaohereg)

## 测试颜色

测试终端颜色，运行 `24-bit-color.sh`

## deb-init

deb-init 用于自动化安装 debian 系的软件，主要用于 wsl。

## deb-proxy

用于代理进行安装 debian 系的软件，主要用于 wsl。

## prettierrc

前端项目代码规范。

## foxyproxy

用于格式化火狐插件 FoxyProxy

## markdownlintrc

markdown 格式化文件，放在 `$HOME` 目录下。

## myzshrc

对zshrc配置的补充，针对不同系统下的兼容设置以及个人化的配置。

## nvim

neovim 的配置文件夹

## tmux

tmux.conf 配置文件，需要先安装 tmux

```shell
sudo pacman -Syu tmux
sudo apt install tmux
```

tmux 插件管理：[tpm](https://github.com/tmux-plugins/tpm)

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

使用 `prefix` + `I`（大写）进行安装插件

## vimrc

配置文件位于 `~/.vimrc`,新版 Vim (9.1.0327+) 也开始支持将配置放在 ~/.config/vim/ 目录下

vimrc 无插件，无需安装，适用于快速使用的环境

## vscode-settings

vscode 配置文件，需要安装 vim 插件 [vscodevim](https://github.com/asvetliakov/vscodevim)

## zshrc

配合 [oh my zsh](https://github.com/ohmyzsh/ohmyzsh) 使用

## Windows

Windows 系统下的配置

### input.ahk

AutoHotKey 脚本，使用前请安装 [AutoHotKey](https://www.autohotkey.com/)

需要开机启动将脚本放置在 `C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup` 目录下

主要的作用：

1. 禁用微软拼音的英文输入
2. 使用 Ctrl + Space 进行中英文切换

### wechats

快速双开微信的脚本

### win_sys_proxy

windows 系统代理设置以及取消脚本。

设置之后可以在 wsl 里面 `ping google.com` 或者打开浏览器测试 google

### xiaohe.reg

小鹤双拼的注册表
