local o = vim.o

vim.g.mapleader = " "

o.laststatus = 3 -- global statusline
o.showmode = false

o.clipboard = "unnamedplus"

-- Indenting
o.expandtab = true
o.smartindent = true
o.tabstop = 4
o.shiftwidth = 4
vim.opt.fillchars = { eob = " " }
o.ignorecase = true
o.smartcase = true
o.mouse = "a"

o.number = true

o.scrolloff = 8
o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true
o.termguicolors = true
o.timeoutlen = 400
o.undofile = true
o.cursorline = true

-- add binaries installed by mason.nvim to path
local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
vim.env.PATH = vim.env.PATH .. (is_windows and ";" or ":") .. vim.fn.stdpath "data" .. "/mason/bin"

vim.api.nvim_set_hl(0, "IndentLine", { link = "Comment" })