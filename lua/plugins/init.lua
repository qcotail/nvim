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
		"HakonHarnes/img-clip.nvim",
		event = "VeryLazy",
	},
}
