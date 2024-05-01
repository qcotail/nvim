local vim = vim

-- 
vim.opt.tabstop        = 4
vim.opt.shiftwidth     = 4
vim.opt.smartcase      = true
vim.opt.colorcolumn    = '95'
vim.opt.number         = true
vim.opt.relativenumber = true
vim.opt.termguicolors  = true
vim.opt.background     = 'light'
vim.opt.clipboard      = 'unnamed'
vim.opt.cursorcolumn   = true
vim.opt.cursorline     = true

-- Set Colorscheme
vim.cmd([[colorscheme ddbeatt]])

-- Remeber last position
vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = {"*"},
    callback = function()
        if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
            vim.api.nvim_exec("normal! g'\"",false)
        end
    end
})

if vim.g.neovide then
	vim.o.guifont = "RecMonoDuotone Nerd Font"
	vim.g.neovide_scale_factor = 1.2

	vim.g.neovide_background_color = "#DDBEA8"
	vim.g.neovide_transparency = 0.8

	vim.g.neovide_cursor_vfx_mode = "railgun"
	vim.g.neovide_cursor_vfx_particle_lifetime = 1.8
end
