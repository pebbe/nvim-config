local cmp_status_ok, tt = pcall(require, 'toggleterm')
if not cmp_status_ok then
  return
end

tt.setup({
  open_mapping = [[<c-\>]],
  direction = 'horizontal',
  hide_numbers = true,
  size = 16,
})
