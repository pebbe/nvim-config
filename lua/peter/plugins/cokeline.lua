-- import cokeline plugin safely
local status, cokeline = pcall(require, 'cokeline')
if not status then
	return
end

cokeline.setup({
	sidebar = {
		filetype = 'neo-tree',
		components = {
			{
				text = ' neo-tree',
			},
		},
	},
})
