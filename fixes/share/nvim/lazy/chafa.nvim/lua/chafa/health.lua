local M = {}

M.check = function()
  vim.health.start("chafa.nvim health check")
  if vim.fn.executable("chafa") == 1 then
    vim.health.ok("no issues found")
  else
    vim.health.error("chafa executable not found")
    vim.health.info("Follow installations instructions at https://hpjansson.org/chafa/download/")
  end
end

return M
