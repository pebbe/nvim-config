local colorscheme = "OceanicNext"
if vim.opt.background:get() == 'light' then
  colorscheme = 'OceanicNextLight'
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
