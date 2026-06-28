return {
  -- catppuccin
  {
    "catppuccin/nvim",
    lazy = false,  -- 确保启动时加载
    priority = 1000, -- 设置优先级
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- 主题风格，latte, frappe, macchiato, mocha
      transparent_background = false,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
