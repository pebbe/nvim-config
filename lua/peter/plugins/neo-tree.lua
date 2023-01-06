local status, nt = pcall(require, 'neo-tree')
if not status then
	return
end

nt.setup({
	filesystem = {
		filtered_items = {
			never_show = {
				'.dc',
			},
		},
	},
})
