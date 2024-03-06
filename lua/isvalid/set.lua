-- Not sure if i want this or not..
-- vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

-- For Windows:
--vim.opt.undodir = "/.vim/undodir"
vim.opt.undodir = os.getenv("USERPROFILE") .. "/.vim/undodir"
-- For Linux:
--vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Testing:
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Not for me but feel free to uncomment.
-- vim.opt.colorcolumn = "80"
