
vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'mail', 'markdown', 'text'},
	callback = function()
		--local buf = vim.fn.expand("<abuf>")
		--local file = vim.fn.expand("<afile>")
		local match = vim.fn.expand('<amatch>')

		-- line wrapping
		vim.wo.wrap = true
		vim.wo.linebreak = true
		vim.bo.textwidth = 72

    if match == 'mail' then
      vim.bo.textwidth = 64
    end

		-- tabs & indentation
		if match ~= 'text' then
			vim.bo.expandtab = true -- expand tab to spaces
		end
	end,
})

vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'css', 'html', 'javascript', 'json', 'lua', 'svelte', 'xml' },
	callback = function()
		vim.bo.expandtab = true
		vim.bo.tabstop = 2
		vim.bo.softtabstop = 2 -- wanneer je TAB toetst
		vim.bo.shiftwidth = 2 -- automatisch inspringen
	end,
})

vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'go' },
	callback = function()
		vim.bo.tabstop = 4
	end,
})

vim.api.nvim_create_autocmd('BufRead,BufNewFile,BufFilePost', {
	pattern = { '*.ttl' },
	callback = function()
		vim.cmd.setfiletype('turtle')
	end,
})

vim.api.nvim_create_autocmd('BufRead,BufNewFile,BufFilePost', {
	pattern = { '*.v' },
	callback = function()
		vim.cmd.setfiletype('v')
	end,
})

vim.api.nvim_create_autocmd('BufRead,BufNewFile,BufFilePost', {
	pattern = { '*.jsonld' },
	callback = function()
		vim.cmd.setfiletype('json')
	end,
})

vim.api.nvim_create_autocmd('BufRead,BufNewFile', {
	pattern = { '*' },
	callback = function()
		vim.wo.foldlevel = 99999
	end,
})

