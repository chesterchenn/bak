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
set autoindent
" set smartindent

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

" 设置最大的文件标记数和
" 寄存器最大保存的行数（即可最大可复制的行数）
" 由于第二个默认为 50，导致复制超过 50 行会缺失
set viminfo='50,<1000

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

" 使用 gh 显示文档
nnoremap <silent> gh :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" coc - 使用回车选择提示
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" coc - 使用 `[g` `]g` 跳转到上一个/下一个报错
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" coc - 代码导航
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-reference)

" coc - 格式化选中的代码
xmap <leader>s <Plug>(coc-format-selected)
nmap <leader>s <Plug>(coc-format-selected)

" coc - 插件
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-markdownlint', 'coc-prettier', 'coc-rls', 'coc-java']

" coc - prettier 插件的快捷键
nmap <leader>f :CocCommand prettier.formatFile

" airline - 开启tab
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" easy-align
xmap ga <plug>(EasyAlign)
nmap ga <plug>(EasyAlign)

" ctrlp 的配置
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules'

" 使用 vim plug 插件
call plug#begin()
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
  Plug 'vim-airline/vim-airline'
  Plug 'powerline/powerline'
  Plug 'mattn/emmet-vim'
  Plug 'dracula/vim', {'as': 'dracula'}
  Plug 'LunarWatcher/auto-pairs'
  Plug 'junegunn/vim-easy-align'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'ap/vim-css-color'
  Plug 'tpope/vim-commentary'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-surround'
call plug#end()

" 设置主题，必须放在 plug#end 后面
colorscheme dracula
" set background=dark
" colorscheme PaperColor
