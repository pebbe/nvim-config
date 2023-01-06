--[[

nieuwe sessie maken:

  :lua MiniSessions.write('name')


sessie verwijderen:

  :lua MiniSessions.delete('name')

--]]

local status_ok, s = pcall(require, 'mini.sessions')
if not status_ok then
	return
end

s.setup({
	autowrite = false,
	directory = '/home/peter/.nvim/share/nvim/mini/sessions',
	file = '',
})
