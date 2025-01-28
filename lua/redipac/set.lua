vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.termguicolors = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.wrap = false
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4
vim.opt.colorcolumn = "120"

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.list = true
vim.opt.listchars = {
  -- tab = '▷▷⋮',
  tab = '│ ',
  -- lead = '>',
  -- space = ' ',
  -- leadmultispace = '│   ',
  leadmultispace = 'ǀ   ',
  extends = '≫',
  precedes = '≪',
  trail = '·'
}

-- vim.g.fugitive_git_executable = "/mnt/c/Program\\ Files/Git/cmd/git.exe"
