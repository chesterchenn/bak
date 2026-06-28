-- 退出插入模式时，关闭 fcitx5 输入法
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  callback = function()
    vim.fn.jobstart({"fcitx5-remote", "-c"}, {
      detach = true, -- 进程脱离
      stdout = false, -- 不捕获输出
      stderr = false, -- 不捕获错误
    })
  end,
})

-- 以下是一组在 WSL 环境下通过 im-select.exe 切换 Windows 输入法的自动命令
-- 默认处于注释状态，如需启用，请移除每行开头的 "--" 符号（或者用 if false then ... end 包裹）
-- local function switch_im(lang_code)
--   vim.fn.jobstart({ "/mnt/d/im-select/im-select.exe", lang_code }, {
--     detach = true,
--     stdout = false,
--     stderr = false,
--   })
-- end
-- 
-- vim.api.nvim_create_autocmd("VimEnter", {
--   pattern = "*",
--   callback = function() switch_im("1033") end,
-- })
-- 
-- vim.api.nvim_create_autocmd("InsertEnter", {
--   pattern = "*",
--   callback = function() switch_im("2052") end,
-- })
-- 
-- vim.api.nvim_create_autocmd("InsertLeave", {
--   pattern = "*",
--   callback = function() switch_im("1033") end,
-- })
-- 
-- vim.api.nvim_create_autocmd("VimLeave", {
--   pattern = "*",
--   callback = function() switch_im("2052") end,
-- })
