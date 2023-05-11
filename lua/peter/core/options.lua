local opt = vim.opt -- for conciseness


opt.listchars = "tab:>-,trail:•,extends:»,precedes:«,nbsp:␣"

-- backups
opt.backup = true

-- line numbers
--opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

opt.tabstop = 8 -- hoeveel spaties een echte TAB inneemt
opt.softtabstop = 4 -- wanneer je TAB toetst
opt.shiftwidth = 4 -- automatisch inspringen
opt.autoindent = true -- copy indent from current line when starting new one

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

opt.signcolumn = 'yes' -- 'number' -- show sign column so that text doesn't shift

-- maakt het mogelijk de cursor te verplaatsen naar waar niks is
opt.virtualedit = 'block'

if vim.fn.environ()['TERM'] == 'xterm-256color' then
	vim.opt.termguicolors = true
end

--if vim.fn.system('dag') == 'dag\n' then
	vim.opt.background = 'light'
--else
--	vim.opt.background = 'dark'
--end

-- backspace
opt.backspace = 'indent,eol,start' -- allow backspace on indent, end of line or insert mode start position

opt.whichwrap = '<,>,[,]'

-- clipboard
opt.clipboard:append('unnamedplus') -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- opt.iskeyword:append("-") -- consider string-string as whole word

-- checkhealth: geen waarschuwing voor perl_provider
vim.g.loaded_perl_provider = 0

vim.notify = require("notify")

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

opt.foldmethod="expr"
opt.foldexpr="nvim_treesitter#foldexpr()"
vim.api.nvim_create_autocmd('BufRead,BufNewFile', {
	pattern = { '*' },
	callback = function()
		vim.wo.foldlevel = 99999
	end,
})

