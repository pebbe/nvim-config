vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'mail', 'markdown', 'text', 'nroff' },
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

vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile', 'BufFilePost' }, {
  pattern = { '*.cyp' },
  callback = function()
    vim.cmd.setfiletype('cypher')
  end,
})

vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile', 'BufFilePost' }, {
  pattern = { '*.gmi' },
  callback = function()
    vim.cmd.setfiletype('gemtext2')
  end,
})

vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile', 'BufFilePost' }, {
  pattern = { '*.xp', '*.xpath' },
  callback = function()
    vim.cmd.setfiletype('xquery')
  end,
})

vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile', 'BufFilePost' }, {
  pattern = { '*.ttl' },
  callback = function()
    vim.cmd.setfiletype('turtle')
  end,
})

vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile', 'BufFilePost' }, {
  pattern = { '*.v' },
  callback = function()
    vim.cmd.setfiletype('v')
  end,
})

vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile', 'BufFilePost' }, {
  pattern = { '*.jsonld' },
  callback = function()
    vim.cmd.setfiletype('json')
  end,
})

vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile', 'BufFilePost' }, {
  pattern = { 'go.mod' },
  callback = function()
    vim.cmd.setfiletype('gomod')
  end,
})

vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile', 'BufFilePost' }, {
  pattern = { '*.1' },
  callback = function()
    vim.cmd.setfiletype('nroff')
  end,
})

vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile' }, {
  pattern = { '*' },
  callback = function()
    vim.wo.foldlevel = 99999
  end,
})

--[[
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { '*' },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
--]]
