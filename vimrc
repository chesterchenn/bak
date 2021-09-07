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

" 修复 wsl 终端下总是以 REPLACE 模式启动 vim
nnoremap <esc>^[ <esc>^[

" 定义 leader 按键为空格
nnoremap <Space> <Nop>
let mapleader="\<Space>"

" coc 配置
" coc - 使用 TAB 选择
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" coc - 使用回车选择提示
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" coc - 使用 `[g` `]g` 跳转到上一个/下一个报错
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" coc - 代码导航
nmap <slient> gd <Plug>(coc-definition)
nmap <slient> gy <Plug>(coc-type-definition)
nmap <slient> gi <Plug>(coc-implementation)
nmap <slient> gr <Plug>(coc-reference)

" coc - 插件
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-explorer', 'coc-markdownlint', 'coc-prettier']

" coc - coc-explorer 插件的快捷键
:nnoremap <leader>e :CocCommand explorer<CR>

" coc - prettier 插件的快捷键
nmap <leader>p :CocCommand prettier.formatFile

" airline - 开启tab
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" easy-align
xmap ga <plug>(easyalign)
nmap ga <plug>(easyalign)

" 使用 vim plug 插件
call plug#begin()
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-airline/vim-airline'
  Plug 'powerline/powerline'
  Plug 'mattn/emmet-vim'
  Plug 'dracula/vim', {'as': 'dracula'}
  Plug 'LunarWatcher/auto-pairs', { 'tag': '*' }
  Plug 'junegunn/vim-easy-align'
  Plug 'NLKNguyen/papercolor-theme'
call plug#end()

" 设置主题，必须放在 plug#end 后面
" colorscheme dracula
set background=dark
colorscheme PaperColor
