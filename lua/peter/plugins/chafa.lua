local status_ok, chafa = pcall(require, 'chafa')
if not status_ok then
  return
end

chafa.setup({
  render = {
    min_padding = 5,
    show_label = true,
  },
  events = {
    update_on_nvim_resize = true,
  },
})
