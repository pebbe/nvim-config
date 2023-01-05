local status_ok, ib = pcall(require, 'indent_blankline')
if not status_ok then
	return
end

ib.setup({
	show_current_context = true,
	show_current_context_start = true,
	space_char_blankline = ' ',
})
