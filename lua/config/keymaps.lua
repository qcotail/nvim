local keymap = vim.keymap.set

keymap(
	'n',
	'sf',
	':Neotree<CR>'
)

keymap(
	'n',
	'sv',
	':vsplit<CR>'
)

keymap(
	'n',
	'ss',
	':split<CR>'
)

keymap(
	'n',
	'<Space>',
	'<C-w><C-w>'
)
