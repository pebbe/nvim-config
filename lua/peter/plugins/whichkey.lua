-- import which-key plugin safely
local status, wk = pcall(require, 'which-key')
if not status then
	return
end

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
