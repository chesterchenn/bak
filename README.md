用于个人备份

## vimrc

使用 vim-plug 安装插件，请先安装 [vim-plug](https://github.com/junegunn/vim-plug)

```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

`coc.nvim` 需要安装 `nodejs`，请使用 [n](https://github.com/tj/n)

## zshrc

配合 [oh my zsh](https://github.com/ohmyzsh/ohmyzsh) 使用

## dst-init

饥荒备份存档，`.dst_conf` 配置如下

```shell
steamid: 123123
cluster: Cluster_1
```

## deb-init 和 deb-after-proxy

deb-init 用于自动化安装 debian 系的软件，主要用于 wsl。

deb-after-proxy 用于配置好代理之后安装的软件。

## prettierrc

prettier 的配置文件

## my_rc

兼容不同系统下的设置

## coc-settings

vim coc 插件的配置 coc-settings.json，需要安装 coc-json，一般放在 .vim（neovim 放在 ~/.config/nvim）。

## rc 与 rifle

ranger 的配置文件，放在 ~/.config/ranger 目录下

## markdownlintrc

markdown 格式化文件，放在 HOME 目录下
