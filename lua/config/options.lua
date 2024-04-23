vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Make relative line numbers default
opt.relativenumber = true
-- opt.number = true

-- tabs & indentation
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true

opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursorline
opt.cursorline = true

-- ui
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true
