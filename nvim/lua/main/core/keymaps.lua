-- Set leader key to comma

vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- variable for conciseness
local keymap = vim.keymap

-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- My own custom keymappings from .vimrc
keymap.set("n", "<leader>s", ":w<CR>", { remap = false, silent = true, desc = "Save File" })
keymap.set("n", "<leader>e", ":q<CR>", { remap = false, silent = true, desc = "Exit" })
keymap.set("n", "<leader>db", ":bd<CR>", { remap = false, silent = true, desc = "Delete Buffer" })
keymap.set("n", "K", "5k")
keymap.set("n", "J", "5j")
keymap.set("n", "<Leader>x", ":q!<CR>", { remap = false, silent = true, desc = "Quit Without Saving" })
keymap.set("n", "<Leader>a", ":qa<CR>", { remap = false, silent = true, desc = "Quit All" })
keymap.set("n", "<Leader>l", ":ls<CR>", { remap = false, silent = true, desc = "List All Buffers" })
keymap.set("n", "<C-s>", ":wa<CR>", { remap = false, desc = "Write All Changed Buffers" })
keymap.set("n", "<Leader>c", ":helpclose<CR>", { remap = false, silent = true, desc = "Close Help Window" })

-- for dealing with buffers
keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next Buffer" })
keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous Buffer" })

-- Trying Ryan Florence trick with Lua
keymap.set("n", "<A-j>", ":m .+1<CR>==", { remap = false })
keymap.set("n", "<A-k>", ":m .-2<CR>==", { remap = false })
keymap.set("i", "<A-j>", "<Escape>:m .+1<CR>==gi", { remap = false })
keymap.set("i", "<A-k>", "<Escape>:m .-2<CR>==gi", { remap = false })
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { remap = false })
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { remap = false })

-- Remap for dealing with word wrap
keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
