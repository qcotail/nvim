require("neo-tree").setup({
	close_if_last_window = true,
	event_handlers = {
		{
			event = "file_opened",
			handler = function(args)
				vim.cmd(":Neotree close")
			end,
		},
		{
			event = "neo_tree_buffer_leave",
			handler = function()
				vim.cmd("Neotree close")
			end,
		}
	},
})

return {}
