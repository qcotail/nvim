return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		}
	},
	{
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {}
	},
	{
		"lervag/vimtex",
		lazy = false,
		init = function()
			vim.g.vimtex_view_method = "sumatra"
		end
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		}
	},
	{
		"norcalli/nvim-colorizer.lua"
	},
	{
		"lewis6991/gitsigns.nvim"
	},
	{
		"williamboman/mason.nvim",
		dependencies = {
			"neovim/nvim-lspconfig", "williamboman/mason-lspconfig.nvim",
			"mfussenegger/nvim-dap", "rcarriga/nvim-dap-ui",
			"mfussenegger/nvim-lint",
			"mhartington/formatter.nvim"
		}
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		}
	},
	{
		'savq/melange-nvim'
	},
	{
		"zaldih/themery.nvim",
		lazy = false,
		config = function()
		require("themery").setup({
			themes = {{
				name = "Miasma",
				colorscheme = "miasma",
				before = [[
					vim.opt.background = "dark"
					require('lualine').setup{options={theme="gruvbox"}}
					]],
			},{
				name = "Melange",
				colorscheme = "melange",
				before = [[
					vim.opt.background = "dark"
					]],
			},{
				name = "Melange Light",
				colorscheme = "melange",
				before = [[
					vim.opt.background = "light"
				]],
			}},
			livePreview = true
		})
		end
	},
	{
		"f-person/auto-dark-mode.nvim",
		opts = {
			update_interval = 1000,
			set_dark_mode = function()
				vim.api.nvim_set_option_value("background", "dark", {})
				vim.cmd("colorscheme miasma")
			end,
			set_light_mode = function()
				vim.api.nvim_set_option_value("background", "light", {})
				vim.cmd("colorscheme melange")
			end,
		},
	},
	{
		"HakonHarnes/img-clip.nvim",
		event = "VeryLazy",
	},
}
