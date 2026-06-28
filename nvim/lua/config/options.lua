-- 将 <leader> 键设置为空格键
vim.g.mapleader = " "

local opt = vim.opt

opt.clipboard = vim.env.SSH_CONNECTION and "" or "unnamedplus" -- 同步系统剪切板
opt.cursorline = true -- 高亮当前行
opt.expandtab = true -- 使用空格代替Tab缩进
opt.hidden = true -- 允许关闭未保存的 buffer
opt.ignorecase = true -- 忽略大小写搜索
opt.number = true -- 开启行号
opt.relativenumber = true -- 使用相当行号
opt.scrolloff = 4 -- 设置光标上下最少行数
opt.shiftwidth = 2 -- 缩进为2
opt.showcmd = true -- 显示当前输入的指令
opt.smartindent = true -- 设置智能缩进
opt.smoothscroll = true
opt.timeoutlen = 1000 -- 按键延时毫秒
