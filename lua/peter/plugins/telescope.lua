return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.3', -- or: branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		'nvim-tree/nvim-web-devicons',
	},
	config = function()
		local telescope = require('telescope')
		local actions = require('telescope.actions')

		telescope.setup({
			defaults = {
				file_ignore_patterns = {
					'~$',
				},
				mappings = {
					i = {
						['<Left>'] = actions.cycle_history_prev,
						['<Right>'] = actions.cycle_history_next,
						['<C-Up>'] = actions.preview_scrolling_up,
						['<C-Down>'] = actions.preview_scrolling_down,
					},
				},
			},
		})

		telescope.load_extension('fzf')

		local k = vim.keymap.set
		local d = function(txt)
			return { noremap = true, silent = true, desc = txt }
		end
		local b = require('telescope.builtin')
		k('n', '<leader>ff', b.find_files, d('find files'))
		k('n', '<leader>fg', b.live_grep, d('live grep'))
		k('n', '<leader>fb', b.buffers, d('buffers'))
		k('n', '<leader>fh', b.help_tags, d('help tags'))
		k('n', '<leader>fr', b.lsp_references, d('references'))
		k('n', '<leader>fd', b.lsp_definitions, d('definition'))
		k('n', '<leader>fD', b.diagnostics, d('diagnostics'))
		k('n', '<leader>fci', b.lsp_incoming_calls, d('incoming calls'))
		k('n', '<leader>fco', b.lsp_outgoing_calls, d('outgoing call'))
		k('n', '<leader>fi', b.lsp_implementations, d('implementations'))
		k('n', '<leader>ft', b.lsp_type_definitions, d('type definition'))
		k('n', '<leader>fq', b.quickfix, d('quick fix'))

		k('n', '<leader>gb', b.git_branches, d('branches'))
		k('n', '<leader>gc', b.git_commits, d('commits'))
		k('n', '<leader>gf', b.git_files, d('files'))
		k('n', '<leader>gs', b.git_status, d('status'))
		k('n', '<leader>gn', '<cmd>Gitsigns next_hunk<CR>', d('next hunk'))
		k('n', '<leader>gp', '<cmd>Gitsigns prev_hunk<CR>', d('previous hunk'))
		k('n', '<leader>gh', '<cmd>Gitsigns preview_hunk<CR>', d('view hunk'))
		k('n', '<leader>gl', '<cmd>Gitsigns blame_line<CR>', d('blame line'))

		k('n', '<F8>', '<cmd>Telescope buffers<CR>', d('Show buffers'))
	end,
}
