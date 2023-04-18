-- zie: https://imfeld.dev/writing/creating_a_custom_command_bar_in_neovim

local M = {}

local commands = {}

for line in io.lines(vim.fn.stdpath('config') .. '/dirs') do
	local _, _, key, cat, value = string.find(line, '^%s*(.-)%s*|%s*(.-)%s*|%s*(.-)%s*$')
	if value ~= nil then
		if key == '~' then
			key = 'home'
		end
		table.insert(commands, { name = key, category = cat, action = value })
	end
end

-- local telescope = require('telescope')
local pickers = require('telescope.pickers')
local finders = require('telescope.finders')

local longest_command_name = 0
for _, command in ipairs(commands) do
	if #command.name > longest_command_name then
		longest_command_name = #command.name
	end
end

local entry_display = require('telescope.pickers.entry_display')
local displayer = entry_display.create({
	separator = ' ',
	items = {
		{ width = longest_command_name + 2 },
		-- The final column can be set to fill the remaining space
		{ remaining = true },
	},
})

local finder = finders.new_table({
	results = commands,
	entry_maker = function(entry)
		return {
			value = entry,
			display = function(ent)
				return displayer({
					ent.value.name,
					{ ent.value.category, 'TelescopeResultsComment' },
				})
			end,
			ordinal = entry.name,
		}
	end,
})

M.cd = function(opts)
	opts = opts or {}

	local conf = require('telescope.config').values
	local actions = require('telescope.actions')
	local action_state = require('telescope.actions.state')

	pickers
		.new(opts, {
			prompt_title = 'Ga naar...',
			finder = finder,
			-- Use the default sorter
			sorter = conf.generic_sorter(opts),
			attach_mappings = function(prompt_bufnr, map)
				map('i', '<CR>', function()
					actions.close(prompt_bufnr)
					local selection = action_state.get_selected_entry(prompt_bufnr)
					-- require('notify').notify(vim.inspect(selection))
					vim.cmd(':tcd ' .. selection.value.action)
					vim.cmd(':Neotree action=focus')
				end)
				return true
			end,
		})
		:find()
end

return M
