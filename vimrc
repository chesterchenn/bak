" 增加吸血鬼主题
packadd! dracula

" 设置主题
colorscheme dracula

" 出错时，禁用响声
set noerrorbells

" 开启行号
set number

" 打开语法高亮
syntax enable

" 显示当前键入的指令
set showcmd

" 智能缩进
set smartindent 

" 缩进 
set shiftwidth=2

" 高亮当前行
set cursorline

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

" coc - 插件
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-explorer']

" coc - coc-explorer 插件的快捷键
:nnoremap <space>e :CocCommand explorer<CR>

" 使用 vim plug 插件
call plug#begin()
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

