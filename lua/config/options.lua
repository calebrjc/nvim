vim.cmd.colorscheme("catppuccin")
vim.g.have_nerd_font = true -- NOTE(calebrjc): May not be necessary

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes:1"
vim.opt.scrolloff = 10
vim.opt.showcmd = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/.undodir"
vim.opt.undofile = true
vim.opt.clipboard = "unnamedplus"

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = "split"

vim.opt.termguicolors = true
vim.opt.mouse = "a"
vim.opt.confirm = true
vim.opt.winborder = "rounded"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.showmode = false
vim.opt.laststatus = 3

-- No automatic comment insertion
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

-- Custom filetype detection
vim.filetype.add({
	pattern = {
		[".*zshrc"] = "bash",
		[".*zsh_aliases"] = "bash",
	},
})
