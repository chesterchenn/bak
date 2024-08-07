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

" 设置折叠
set foldmethod=indent
set foldlevel=99
set foldenable
nmap <leader>fc <cmd>foldclose<CR>
nmap <leader>fo <cmd>foldopen<CR>

" ==================== coc ====================
" 使用 TAB 选择
inoremap <silent><expr> <TAB>
        \ coc#pum#visible() ? coc#pum#next(1):
        \ <SID>check_back_space() ? "\<Tab>" :
        \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()

" 使用回车选择提示
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

" 跳转到上一个/下一个报错
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" 代码导航
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-reference)

" 符号重命名
nmap <leader>rn <Plug>(coc-rename)

" 格式化选中的代码
xmap <leader>s <Plug>(coc-format-selected)
nmap <leader>s <Plug>(coc-format-selected)

" 插件
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-markdownlint', 'coc-prettier', 'coc-rls', 'coc-java', 'coc-vimlsp', 'coc-pairs',  '@yaegassy/coc-volar', 'coc-pyright']

" prettier 插件的快捷键
nmap <leader>p :CocCommand prettier.formatFile<CR>

" 快速修复
nmap <leader>qf <Plug>(coc-fix-current)

" ==================== airline ====================
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" ==================== easy-align ====================
xmap ga <plug>(EasyAlign)
nmap ga <plug>(EasyAlign)

" ==================== rnvimr ====================
let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1
let g:rnvimr_draw_border = 1
highlight link RnvimrNormal CursorLine

nnoremap <silent> R :RnvimrToggle<CR><C-\><C-n>:RnvimrResize<CR>

let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }

let g:rnvimr_ranger_views = [
            \ {'minwidth': 90, 'ratio': []},
            \ {'minwidth': 50, 'maxwidth': 89, 'ratio': [1,1]},
            \ {'maxwidth': 49, 'ratio': [1]}
            \ ]

let g:rnvimr_layout = {
            \ 'relative': 'editor',
            \ 'width': float2nr(round(0.7 * &columns)),
            \ 'height': float2nr(round(0.7 * &lines)),
            \ 'col': float2nr(round(0.15 * &columns)),
            \ 'row': float2nr(round(0.15 * &lines)),
            \ 'style': 'minimal'
            \ }
let g:rnvimr_presets = [{'width': 0.600, 'height': 0.600}]

" ==================== vim-floaterm ====================
nnoremap <silent> T :FloatermNew<CR>

" ====================  Telescope ====================
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fw <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader>sm <cmd>Telescope marks<cr>

" ==================== nvim-tree ====================
nnoremap <leader>tt <cmd>NvimTreeToggle<cr>
nnoremap <leader>tf <cmd>NvimTreeFocus<cr>
nnoremap <leader>te <cmd>NvimTreeFindFile<cr>
nnoremap <leader>tc <cmd>NvimTreeCollapse<cr>

" ==================== vim-markdown-toc ====================
let g:vmt_list_item_char = '-'
let g:vmt_list_indent_text = '  '
nnoremap <leader>toc :GenTocGFM<CR>

" ==================== copilot ====================
" let g:copilot_proxy = 'socks5:localhost:7891'

" 加载独特的 vim 配置
if filereadable(expand("$HOME/.config/nvim/.myvimrc"))
  source $HOME/.config/nvim/.myvimrc
endif

" 使用 vim plug 插件
call plug#begin()
  Plug 'ap/vim-css-color'
  Plug 'dracula/vim', {'as': 'dracula'}
  Plug 'junegunn/vim-easy-align'
  Plug 'mattn/emmet-vim'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'powerline/powerline'
  Plug 'numToStr/Comment.nvim'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'mzlogin/vim-markdown-toc'
  Plug 'kevinhwang91/rnvimr'
  " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  " Plug 'junegunn/fzf.vim'
  Plug 'voldikss/vim-floaterm'
  Plug 'nvim-lua/plenary.nvim' " Required by telescope.nvim
  Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.x'}
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'nvim-tree/nvim-tree.lua'
  Plug 'nvim-tree/nvim-web-devicons' " optional
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'f-person/git-blame.nvim'
  Plug 'airblade/vim-gitgutter'
  " Plug 'github/copilot.vim'
  Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

" 设置主题，必须放在 plug#end 后面
" colorscheme dracula
" colorscheme PaperColor
" set background=light
colorscheme catppuccin-macchiato

lua <<EOF
  require('telescope').setup {
    -- ignore images
    defaults = { file_ignore_patterns = {"_site", ".jpg", ".png", ".svg", ".gif", ".ico", ".webp"} }
  }
EOF

lua <<EOF
  require"nvim-treesitter.configs".setup {
    -- one of "all", "language", or a list of languages
    ensure_installed = {"typescript", "javascript", "java", "tsx", "json", "bash", "lua", "vim", "c", "html", "css", "python"},
    highlight = {
      enable = true
    }
  }
EOF

lua require('Comment').setup()

lua require'colorizer'.setup()

lua <<EOF
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
EOF

lua <<EOF
  local highlight = {
      "RainbowRed",
      "RainbowYellow",
      "RainbowBlue",
      "RainbowOrange",
      "RainbowGreen",
      "RainbowViolet",
      "RainbowCyan",
  }

  local hooks = require "ibl.hooks"
  -- create the highlight groups in the highlight setup hook, so they are reset
  -- every time the colorscheme changes
  hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
      vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
      vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
      vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
      vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
      vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
      vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
  end)

  require("ibl").setup { indent = { highlight = highlight } }
EOF
