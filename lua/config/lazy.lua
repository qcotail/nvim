-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local vim = vim

-- Custom Settings
vim.opt.tabstop         = 2
vim.opt.shiftwidth      = 2
vim.opt.smartcase       = true
vim.opt.colorcolumn     = '102'
vim.opt.number          = true
vim.opt.relativenumber  = true
vim.opt.termguicolors   = true
--vim.opt.background      = 'dark'
vim.opt.clipboard       = 'unnamed'
vim.opt.cursorline      = true
vim.opt.list            = true
vim.opt.listchars.extends = "◦"
vim.opt.textwidth       = 90

vim.g.vimtex_compiler_latexmk = {
  options = {
		'-verbose',
		'-file-line-error',
		'-synctex=1',
		'-interaction=nonstopmode',
		'-shell-escape',
  },
}

-- Remember last position
vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = {"*"},
	callback = function()
		if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
			vim.api.nvim_exec("normal! g'\"",false)
		end
	end
})

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  checker = {
		enabled = true,
		notify = false
	},
})
