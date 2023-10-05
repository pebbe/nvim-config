return {
	'nvim-neo-tree/neo-tree.nvim',
	branch = 'v3.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
		'MunifTanjim/nui.nvim',
	},
	config = function()
		require('neo-tree').setup({
			filesystem = {
				filtered_items = {
					never_show = {
						'.dc',
					},
					hide_by_pattern = {
						'*~',
					},
				},
			},
		})
		vim.keymap.set(
			'n',
			'<F2>',
			'<cmd>Neotree toggle reveal_force_cwd<CR>',
			{ noremap = true, silent = true, desc = 'Neotree' }
		)
	end,
}
