-- Variable for conciseness
local opt = vim.opt

-- Set highlight on
opt.hlsearch = false
opt.incsearch = true

opt.expandtab = true

-- Cursor line
opt.cursorline = true

-- Cursorcolumn
-- opt.cursorcolumn = true

-- Background
opt.background = "dark"

-- Make line numbers default
opt.relativenumber = true
opt.number = true
opt.numberwidth = 2

-- Enable mouse mode
opt.mouse = "a"

-- From trash.nvim
-- vim.o.showtabline = 2
opt.tabstop = 2

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
opt.clipboard = "unnamedplus"

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Split Window Right
opt.splitright = true

-- Split Window Below
-- I was overriding this option here - found on March 03, 2024
-- opt.splitbelow = true

-- Keep signcolumn on by default
opt.signcolumn = "yes"

-- Decrease update time
opt.updatetime = 250
opt.timeout = true
opt.timeoutlen = 300

-- Set completeopt to have a better completion experience
opt.completeopt = "menuone,noselect"

opt.termguicolors = true

-- From Trashvim
opt.smartindent = true

-- From Primeagen
opt.scrolloff = 8

vim.cmd([[autocmd BufRead,BufNewFile *.md setlocal textwidth=100]])
vim.cmd([[autocmd BufRead,BufNewFile *.sh setlocal textwidth=100]])
vim.cmd([[autocmd BufRead,BufNewFile *.go setlocal textwidth=80]])
vim.cmd([[autocmd BufRead,BufNewFile *.go setlocal tabstop=4]])
