return {

  -- "rebelot/kanagawa.nvim",
  -- priority = 1000,
  -- config = function()
  --   -- vim.cmd.colorscheme 'kanagawa'
  --   vim.cmd([[colorscheme kanagawa-dragon]])
  -- end,
  --
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("tokyonight")
    vim.cmd([[colorscheme tokyonight-storm]])
  end,
}
