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

local colorscheme = 'nightfly'
if vim.api.nvim_get_option_value('background', {}) == 'light' then
	colorscheme = 'bluloco-light'
end

local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

if not status_ok then
	vim.notify('colorscheme ' .. colorscheme .. ' not found!')
	return
end
