local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tab
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4;
opt.expandtab = true
opt.autoindent = true

-- cursor
opt.cursorline = true

-- mouse
opt.mouse:append("a")

-- clipboard
opt.clipboard:append("unnamedplus")

-- new window
opt.splitright = true
opt.splitbelow = true

-- find
opt.ignorecase = true
opt.smartcase = true

-- terminal
opt.termguicolors = true
opt.signcolumn = 'yes'
