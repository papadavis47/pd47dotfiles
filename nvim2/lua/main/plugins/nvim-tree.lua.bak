return {

  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    version = "*",
    lazy = false,
    config = function()
      local nvimtree = require("nvim-tree")

      -- recommended settings
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      nvimtree.setup({
        disable_netrw = true,
        view = { side = "right", width = 60 },
        actions = {
          open_file = { quit_on_open = true },
        },
      })

      -- for NvimTree
      vim.keymap.set("n", "<C-m>", ":NvimTreeToggle<CR>", { silent = true })
    end,
  },
}
