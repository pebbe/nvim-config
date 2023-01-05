-- import cokeline plugin safely
local status, cokeline = pcall(require, 'cokeline')
if not status then
	return
end

cokeline.setup({})
