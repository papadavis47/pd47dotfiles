return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>ff", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    -- these two lines below are not working and I have to figure out why 9.27.2023
    -- I did intall `ripgrep` a Rust program using apt - but fc is still not working while fs is
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    -- Below line is another way of setting leader actions  - holderover from kickstarter.nvim
    keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
    keymap.set("n", "<leader>\\", builtin.buffers, { desc = "[\\] Find existing buffers" })
    keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Search [G]it [F]iles" })
  end,
}
