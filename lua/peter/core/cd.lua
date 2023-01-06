local M = {}

local cd = {}
local keys = {}

for line in io.lines(vim.fn.stdpath('config') .. '/dirs') do
	local _, _, key, value = string.find(line, '^%s*(.-)%s*|%s*(.-)%s*$')
	if value ~= nil then
		table.insert(keys, key)
		cd[key] = value
	end
end

M.cd = function()
	vim.ui.select(keys, {
		prompt = 'ga naar...',
	}, function(choice)
		if choice ~= nil then
			vim.cmd(':tcd ' .. cd[choice])
			vim.cmd(':Neotree action=focus')
		end
	end)
end

return M
