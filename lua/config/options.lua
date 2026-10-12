local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = " "

opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.breakindent = true
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = "yes"
opt.updatetime = 250
opt.timeoutlen = 300
opt.splitright = true
opt.splitbelow = true
opt.termguicolors = true
opt.scrolloff = 8
opt.cursorline = true
opt.wrap = false
opt.inccommand = "split"

-- отступы по умолчанию (для Go переопределяются в ftplugin/go.lua,
-- т.к. gofmt требует табы)
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
