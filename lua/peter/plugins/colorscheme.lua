--[[
 
DONKER
 
OceanicNext
challenger_deep
deep-space
gotham256
iceberg
nightfly
tokyonight-night
bluloco-dark
 
LICHT
 
OceanicNextLight
PaperColor
rdark-terminal2
bluloco-light
 
--]]

return {
	'uloco/bluloco.nvim',
	lazy = false,
	priority = 1000,
	dependencies = { 'rktjmp/lush.nvim' },
	config = function()
		local term = vim.fn.environ()['TERM']
		if term == 'xterm-256color' or term == 'screen-256color' or term == 'tmux-256color' then
			vim.opt.termguicolors = true
		end
		vim.cmd([[colorscheme bluloco-light]])
	end,
}
