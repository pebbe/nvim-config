return {
	'folke/which-key.nvim',
	event = 'VeryLazy',
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	config = function()
		local wk = require('which-key')
		wk.setup({})
		wk.register({
			a = { name = 'Status line' },
			b = { name = 'Buffers' },
			d = { mame = 'Diagnostics' },
			D = { name = 'Debug' },
			f = { name = 'Find', c = { name = 'Calls' } },
			g = { name = 'Git' },
			t = { name = 'Tabs' },
			x = { name = 'Spelling' },
		}, {
			prefix = '<leader>',
		})
	end,
}
