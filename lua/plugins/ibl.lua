local hooks = require('ibl.hooks')
local highlight = {
	--"CursorColumn",
	--"Whitespace",
	"RainbowRed",
	"RainbowOrange",
	"RainbowYellow",
	"RainbowGreen",
	"RainbowBlue",
	"RainbowCyan",
	"RainbowViolet",
}
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
	vim.api.nvim_set_hl(0, "CursorColumn", {
		bg = "#e7bc9d"
		--bg = "#d2ac9e"
		--bg = "#5b6060"
		--bg = "#d1bfb3"
		--bg = "#dabfaf"
		--bg = "#e2c8b6"
		--bg = "#cd9f7e"
		--bg = "#EE5555"
	})
	vim.api.nvim_set_hl(0, "Whitespace", {
		bg = "#d4ad91"
		--bg = "#5555EE"
	})
	vim.api.nvim_set_hl(0, "RainbowRed", {
		fg = "#00202E"
	})
	vim.api.nvim_set_hl(0, "RainbowOrange", {
		fg = "#003F5C"
	})
	vim.api.nvim_set_hl(0, "RainbowYellow", {
		fg = "#2C4875"
	})
	vim.api.nvim_set_hl(0, "RainbowGreen", {
		fg = "#8A508F"
	})
	vim.api.nvim_set_hl(0, "RainbowBlue", {
		fg = "#BC5090"
	})
	vim.api.nvim_set_hl(0, "RainbowCyan", {
		fg = "#FF6361"
	})
	vim.api.nvim_set_hl(0, "RainbowViolet", {
		fg = "#FF8531"
	})
	end
)

vim.g.rainbow_delimiters = {
	highlight = highlight
}
require("ibl").setup {
	indent = {
		highlight = highlight,
		char = "│",
	},
	whitespace = {
		highlight = highlight,
		remove_blankline_trail = true,
	},
	scope = {
		highlight = highlight,
		char = '┆'
	}
}
hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
require("indent-rainbowline").make_opts()
return {}
