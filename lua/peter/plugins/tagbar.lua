return {
	'preservim/tagbar',
	config = function()
		vim.keymap.set('n', '<F3>', '<cmd>TagbarToggle<CR>', { noremap = true, silent = true, desc = 'Tagbar' })
	end,
}
