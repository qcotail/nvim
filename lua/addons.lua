return {
	{
	    "nvim-neo-tree/neo-tree.nvim",
	    branch = "v3.x",
	    dependencies = {
	    	"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
	    },
	},
	{
		"lervag/vimtex",
	},
	{
		'brenoprata10/nvim-highlight-colors',
		init = function()
			require("nvim-highlight-colors").setup({
				render = 'virtual',
				virtual_symbol = '󱡓'
			})
		end,
	},
	{
		'nvim-lualine/lualine.nvim',
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		dependencies = {
			"TheGLander/indent-rainbowline.nvim",
		},
	},
	{
		'williamboman/mason.nvim'
	},
	{
		'neovim/nvim-lsp'
	},
	{
		'neovim/nvim-lspconfig'
	},
	{
		'williamboman/mason-lspconfig.nvim'
	},
	{
		'hrsh7th/cmp-nvim-lsp'
	},
	{
		'hrsh7th/nvim-cmp'
	},
	{
		'L3MON4D3/LuaSnip',
		build = "make install_jsregexp"
	},
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-telescope/telescope-fzf-native.nvim'
		}
	},
	{
		'hiphish/rainbow-delimiters.nvim'
	},
	{
		'jiangmiao/auto-pairs',
	},
	{
		'tyru/caw.vim'
	},
	{
		'roobert/search-replace.nvim',
		config = function()
			require("search-replace").setup({
				-- optionally override defaults
				-- default_replace_single_buffer_options = "gcI",
				-- default_replace_multi_buffer_options = "egcI",
			})
		end,
	},
	{
		'onsails/lspkind.nvim'
	},
	{
		'frabjous/knap'
	},
	{
		'donraphaco/neotex'
	}
}
