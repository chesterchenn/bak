# 个人备份

<!-- vim-markdown-toc GFM -->

- [测试颜色](#测试颜色)
- [coc-settings](#coc-settings)
- [deb-init](#deb-init)
- [deb-proxy](#deb-proxy)
- [prettierrc](#prettierrc)
- [foxyproxy](#foxyproxy)
- [init.vim](#initvim)
- [markdownlintrc](#markdownlintrc)
- [my_rc](#my_rc)
- [myvimrc](#myvimrc)
- [retore](#retore)
- [tmux](#tmux)
- [vimrc](#vimrc)
- [vscode-settings](#vscode-settings)
- [zshrc](#zshrc)
- [Windows](#windows)
  - [input.ahk](#inputahk)
  - [wechats](#wechats)
  - [win_sys_proxy](#win_sys_proxy)
  - [xiaohe.reg](#xiaohereg)

<!-- vim-markdown-toc -->

## 测试颜色

```sh
curl -s https://gist.githubusercontent.com/lifepillar/09a44b8cf0f9397465614e622979107f/raw/24-bit-color.sh >24-bit-color.sh
bash 24-bit-color.sh
```

## coc-settings

vim coc 插件的配置 coc-settings.json，需要安装 coc-json，一般放在 .vim（neovim 放在 ~/.config/nvim）。

## deb-init

deb-init 用于自动化安装 debian 系的软件，主要用于 wsl。

## deb-proxy

用于代理进行安装 debian 系的软件，主要用于 wsl。

## prettierrc

前端项目代码规范。

## foxyproxy

用于格式化火狐插件 FoxyProxy

## init.vim

neovim 的配置文件，放在 ~/.config/nvim 目录下

使用 vim-plug 安装插件，请先安装 [vim-plug](https://github.com/junegunn/vim-plug)，位于 $HOME/.local/share/nvim/site/autoload/plug.vim

- 系统需要安装剪切板工具 xclip
- telescope.nvim 需要安装 [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
- rnvimr 需要安装 [Pynvim](https://github.com/neovim/pynvim)

## markdownlintrc

markdown 格式化文件，放在 `$HOME` 目录下。

## my_rc

不同系统下的兼容设置以及个人化的配置。

## myvimrc

配置文件位于 `~/.myvimrc`, 适用于不同系统的 vim/neovim 环境配置。

## retore

restore 进行配置文件同步

## tmux

tmux.conf 配置文件

tmux 插件管理：[tpm](https://github.com/tmux-plugins/tpm)

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

使用 `prefix` + `I`（大写）进行安装插件

## vimrc

配置文件位于 `~/.vimrc`

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
