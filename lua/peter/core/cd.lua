local M = {}

local data = {
	--	{ 'home', '~' },
	{ 'nvim', '~/.nvim/config/nvim' },
	{ 'blog', '~/blog/content/posts/2023' },
	{ 'lentis', '~/lentis/content/post/2023' },
	{ 'werk', '~/werklog/2023' },
  { 'go', '~/go/src/github.com'},
	{ 'alpinograph', '~/web/urd/www/alpinograph' },
}

local cd = {}
local keys = {}
for _, value in pairs(data) do
	table.insert(keys, value[1])
	cd[value[1]] = value[2]
end

M.cd = function()
	vim.ui.select(keys, {
		prompt = 'ga naar...',
	}, function(choice)
		if choice ~= nil then
			vim.cmd(':tcd ' .. cd[choice])
		end
	end)
end

return M
