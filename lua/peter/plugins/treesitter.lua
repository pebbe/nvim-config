-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, 'nvim-treesitter.configs')
if not status then
	return
end

-- configure treesitter
treesitter.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true,
    disable = { "" }, -- list of languages that will be disabled
	},
	-- enable indentation
	indent = {
    enable = true,
    disable = { "" }, -- list of languages that will be disabled
  },
	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = { enable = true },
	-- ensure these language parsers are installed
	ensure_installed = {
		'c',
		'go',
		'html',
		'javascript',
		'json',
		'latex',
		'lua',
		'make',
		'markdown',
		'python',
		'r',
		'rust',
		'sparql',
		'sql',
		'svelte',
		'toml',
		'typescript',
		'v',
		'vim',
		'yaml',
		'zig',
	},
	-- auto install above language parsers
	auto_install = true,
	playground = {
		enable = true,
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
})
