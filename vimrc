" 取消 vi 兼容模式
set nocompatible

" 出错时，禁用响声
set noerrorbells
set vb t_vb=

" 开启行号
set number

" 使用相对行号
set relativenumber

" 打开语法高亮
syntax enable

" 显示当前键入的指令
set showcmd

" 智能缩进
" set autoindent
set smartindent

" 缩进
set shiftwidth=2

" 使用空格代替Tab缩进
set expandtab

" 高亮当前行
set cursorline

" 设置光标上下最少行数
set scrolloff=3

" 设置光标滚动滑动行数
set scrolljump=3

" 设置边输入边搜索
set incsearch

" 允许未保存关闭buffer
set hidden

" 设置按键延时 3000 毫秒
set timeoutlen=3000
set ttimeoutlen=10

" 设置最大的文件标记数和
" 寄存器最大保存的行数（即可最大可复制的行数）
" 由于第二个默认为 50，导致复制超过 50 行会缺失
set viminfo='50,<1000

" 显示搜索个数
set shortmess-=S

" 取消高亮搜索
set nohlsearch

" 忽略大小写查找
set ic

" 修复 wsl 终端下总是以 REPLACE 模式启动 vim
nnoremap <esc>^[ <esc>^[

" 定义 leader 按键为空格
nnoremap <Space> <Nop>
let mapleader="\<Space>"

nnoremap Q :q<CR>
nnoremap S :w<CR>

" 加载独特的 vim 配置
if filereadable($HOME.'/.myvimrc')
  source $HOME/.myvimrc
endif

