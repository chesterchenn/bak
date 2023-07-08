# 个人备份

<!-- vim-markdown-toc GFM -->

- [coc-settings](#coc-settings)
- [cookie.js](#cookiejs)
- [deb-init](#deb-init)
- [deb-proxy](#deb-proxy)
- [curl-with-proxy](#curl-with-proxy)
- [editorconfig eslintrc prettierrc](#editorconfig-eslintrc-prettierrc)
- [init.vim](#initvim)
- [markdownlintrc](#markdownlintrc)
- [my_rc](#my_rc)
- [rc 与 rifle](#rc-与-rifle)
- [retore](#retore)
- [vimrc](#vimrc)
- [vscode-settings](#vscode-settings)
- [win_sys_proxy](#win_sys_proxy)
- [zshrc](#zshrc)

<!-- vim-markdown-toc -->

## coc-settings

vim coc 插件的配置 coc-settings.json，需要安装 coc-json，一般放在 .vim（neovim 放在 ~/.config/nvim）。

## cookie.js

京东自动签到 cookie 环境变量格式化脚本。

电脑登陆京东获取对应的 `pt_key` 和 `pt_pin`，运行脚本生成对应环境变量。

## deb-init

deb-init 用于自动化安装 debian 系的软件，主要用于 wsl。

## deb-proxy

用于代理进行安装 debian 系的软件，主要用于 wsl。

## curl-with-proxy

curl-with-proxy 用于配置好代理之后安装的软件。

## editorconfig eslintrc prettierrc

前端项目代码规范。

## init.vim

当前跟 vimrc 保持同步

neovim 的配置文件，放在 ~/.config/nvim 目录下

使用 vim-plug 安装插件，请先安装 [vim-plug](https://github.com/junegunn/vim-plug)，位于 $HOME/.local/share/nvim/site/autoload/plug.vim

- 系统需要安装剪切板工具 xclip
- telescope.nvim 需要安装 [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
- rnvimr 需要安装 [Pynvim](https://github.com/neovim/pynvim)

## markdownlintrc

markdown 格式化文件，放在 `$HOME` 目录下。

## my_rc

不同系统下的兼容设置以及个人化的配置。

## rc 与 rifle

ranger 的配置文件，放在 ~/.config/ranger 目录下

## retore

restore 进行配置文件同步

## vimrc

当前跟 init.vim 保持同步

使用 vim-plug 安装插件，请先安装 [vim-plug](https://github.com/junegunn/vim-plug)，位于 $HOME/.vim/autoload/plug.vim

```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

`coc.nvim` 需要安装 `nodejs`，请使用 [n](https://github.com/tj/n)

## vscode-settings

vscode 配置文件。

## win_sys_proxy

windows 系统代理设置以及取消脚本。

## zshrc

配合 [oh my zsh](https://github.com/ohmyzsh/ohmyzsh) 使用
