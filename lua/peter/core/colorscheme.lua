--[[

DONKER

OceanicNext
challenger_deep
deep-space
gotham256
iceberg
nightfly
tokyonight-night

LICHT

OceanicNextLight
PaperColor
rdark-terminal2

--]]

local colorscheme = 'nightfly'
if vim.api.nvim_get_option_value('background', {}) == 'light' then
	colorscheme = 'OceanicNextLight'
end

local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

if not status_ok then
	vim.notify('colorscheme ' .. colorscheme .. ' not found!')
	return
end
