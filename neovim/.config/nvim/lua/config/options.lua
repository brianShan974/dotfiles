local tabwidth = 4

-- backup
vim.opt.backup = false
vim.opt.undofile = true

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- file
vim.opt.fileencoding = "utf-8"
vim.opt.autoread = true
vim.opt.updatetime = 100
vim.api.nvim_command(":filetype plugin on")

-- indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = tabwidth
vim.opt.tabstop = tabwidth
vim.opt.softtabstop = tabwidth

-- info
vim.opt.showcmd = true

-- line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- mouse
vim.opt.mouse = "a"

-- scrolling
vim.opt.scrolloff = 5

-- searching
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- ui
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.termguicolors = true

-- wrapping
vim.opt.wrap = false
vim.opt.linebreak = true
