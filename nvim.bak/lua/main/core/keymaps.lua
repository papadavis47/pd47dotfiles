-- Set leader key to comma

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- variable for conciseness
local keymap = vim.keymap

-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- test
-- now is the time
-- My own custom keymappings from .vimrc
keymap.set("n", "<leader>s", ":w<CR>", { remap = false, silent = true, desc = "Save File" })
keymap.set("n", "Q", ":q<CR>", { remap = false, silent = true, desc = "Exit" })
keymap.set("n", "<leader>e", ":bd<CR>", { remap = false, silent = true, desc = "Delete Buffer" })
keymap.set("n", "K", "5k")
keymap.set("n", "J", "5j")
keymap.set("n", "<Leader>x", ":q!<CR>", { remap = false, silent = true, desc = "Quit Without Saving" })
keymap.set("n", "<Leader>l", ":ls<CR>", { remap = false, silent = true, desc = "List All Buffers" })
keymap.set("n", "<C-s>", ":w<CR>", { remap = false, desc = "Write Current Buffer" })
keymap.set("n", "<Leader>c", ":helpclose<CR>", { remap = false, silent = true, desc = "Close Help Window" })

local map = vim.api.nvim_set_keymap
map("i", "<C-s>", "<Escape>:w<CR>", { noremap = true })

-- New Creations for 2024
keymap.set("n", "<leader>t", ":tabnew<CR>", { remap = false, silent = true, desc = "New Tab" })
keymap.set("n", "<leader>n", ":tabnext<CR>", { remap = false, silent = true, desc = "Next Tab" })
keymap.set("n", "<leader>p", ":tabprev<CR>", { remap = false, silent = true, desc = "Previous Tab" })

-- for dealing with buffers
keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next Buffer", silent = true })
keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous Buffer", silent = true })

-- Trying Ryan Florence trick with Lua
keymap.set("n", "<A-j>", ":m .+1<CR>==", { remap = false })
keymap.set("n", "<A-k>", ":m .-2<CR>==", { remap = false })
keymap.set("i", "<A-j>", "<Escape>:m .+1<CR>==gi", { remap = false })
keymap.set("i", "<A-k>", "<Escape>:m .-2<CR>==gi", { remap = false })
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { remap = false })
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { remap = false })

-- From the Primeagen
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

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

if vim.lsp.inlay_hint then
  vim.keymap.set("n", "<leader>h", function()
    vim.lsp.inlay_hint(0, nil)
  end, { desc = "Toggle Inlay HInts" })
end
