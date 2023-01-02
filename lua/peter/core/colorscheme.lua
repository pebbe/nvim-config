if vim.fn.environ()['TERM'] ~= 'xterm-256color' then
  return
end
vim.opt.termguicolors = true

local colorscheme = "default"

local dag = vim.fn.system('dag')
if dag == 'dag\n' then
  colorscheme = 'morning'
  vim.opt.background = "light" -- colorschemes that can be light or dark will be made light
elseif dag == 'nacht\n' then
  colorscheme = 'evening' -- 'slate' -- 'desert'
  vim.opt.background = "dark" -- colorschemes that can be light or dark will be made dark
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
