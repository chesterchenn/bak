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
set ttimeoutlen=10

" 设置最大的文件标记数和
" 寄存器最大保存的行数（即可最大可复制的行数）
" 由于第二个默认为 50，导致复制超过 50 行会缺失
set viminfo='50,<1000

" 显示搜索个数
set shortmess-=S

" 修复 wsl 终端下总是以 REPLACE 模式启动 vim
nnoremap <esc>^[ <esc>^[

" 定义 leader 按键为空格
nnoremap <Space> <Nop>
let mapleader="\<Space>"

nnoremap Q :q<CR>
nnoremap S :w<CR>
nnoremap T :ter<CR>

" coc 配置
" coc - 使用 TAB 选择
inoremap <silent><expr> <TAB>
        \ coc#pum#visible() ? coc#pum#next(1):
        \ <SID>check_back_space() ? "\<Tab>" :
        \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()

" coc - 使用回车选择提示
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" 使用 gh 显示文档
nnoremap <silent> gh :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('gh', 'in')
  endif
endfunction

" coc - 使用 `[g` `]g` 跳转到上一个/下一个报错
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" coc - 代码导航
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-reference)

" 符号重命名
nmap <leader>rn <Plug>(coc-rename)

" coc - 格式化选中的代码
xmap <leader>s <Plug>(coc-format-selected)
nmap <leader>s <Plug>(coc-format-selected)

command! -nargs=? Fold :call CocAction('fold', <f-args>)

command! -nargs=0 Format :call CocActionAsync('format')

" coc - 插件
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-markdownlint', 'coc-prettier', 'coc-rls', 'coc-java', 'coc-vimlsp']

" coc - prettier 插件的快捷键
nmap <leader>f :CocCommand prettier.formatFile

" coc 快速修复
nmap <leader>qf <Plug>(coc-fix-current)

" airline - 开启tab
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" easy-align
xmap ga <plug>(EasyAlign)
nmap ga <plug>(EasyAlign)

vnoremap Y "+y

" 退出插入模式禁用输入法
" autocmd InsertLeave * :silent !fcitx5-remote -c

" 使用 vim plug 插件
call plug#begin()
  Plug 'ap/vim-css-color'
  Plug 'dracula/vim', {'as': 'dracula'}
  Plug 'junegunn/vim-easy-align'
  Plug 'LunarWatcher/auto-pairs'
  Plug 'mattn/emmet-vim'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'powerline/powerline'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
call plug#end()

" 设置主题，必须放在 plug#end 后面
colorscheme dracula
" set background=dark
" colorscheme PaperColor
