vim.g.mapleader = ' '

local k = vim.keymap.set
local opts = { noremap = true, silent = true }
--local term_opts = { silent = true }

local d = function(txt)
  return { noremap = true, silent = true, desc = txt }
end

-- normal -------------------------------------------------------

k('n', '<leader>cg1', ':lua require(\'cmp\').setup { enabled = true }<CR>', d('enable global completion'))
k('n', '<leader>cg0', ':lua require(\'cmp\').setup { enabled = false }<CR>', d('disable global completion'))
k('n', '<leader>cc1', ':lua require(\'cmp\').setup.buffer { enabled = true }<CR>', d('enable local completion'))
k('n', '<leader>cc0', ':lua require(\'cmp\').setup.buffer { enabled = false }<CR>', d('disable local completion'))

k('n', '<leader>q', ':bd<cr>', d('Sluit buffer'))
k('n', '<leader>Q', ':%bdelete<cr>', d('Sluit alle buffers'))
k('n', '<leader>p', ':echo expand("%:p")<cr>', d('Toon volledig path naar huidig bestand'))
k('n', '<leader>P', ':cd %:p:h<cr>', d('Chdir naar directory van huidig bestand'))

-- spelling
k('n', '<leader>N', ':setlocal spell spelllang=nl<CR>', d('Nederlandse spelling'))
k('n', '<leader>E', ':setlocal spell spelllang=en<CR>', d('Engelse spelling'))
k('n', '<leader>G', ':setlocal spell spelllang=de<CR>', d('Duitse spelling'))

-- movement
k('n', 'j', 'gj', opts)
k('n', 'k', 'gk', opts)

-- tabbladen
k('n', '<S-C-Right>', ':tabn<CR>', d('next tab'))
k('n', '<S-C-Left>', ':tabp<CR>', d('previous tab'))
k('n', '<leader>to', ':tabnew<CR>', d('open new tab'))
k('n', '<leader>tq', ':tabclose<CR>', d('close tab'))

-- windows
-- <F3>         -- max/unmax window
-- <C-w>v       -- split window vertically
-- <C-w>s       -- split window horizontally
-- <C-w>=       -- make split windows equal width & height
-- <C-w><C-w>   -- volgend window
-- <C-w><Left>  -- window links
-- <C-w><Right> -- window rechts
-- <C-w><Up>    -- window boven
-- <C-w><Down>  -- window onder
-- <C-w>q       -- sluit window
-- <C-w>n       -- nieuw leeg window onder

k('n', '<C-w>N', ':vnew<CR>', d('new window right'))
k('n', '<C-Left>', '<C-w><Left>', d('go to window left'))
k('n', '<C-Right>', '<C-w><Right>', d('go to window right'))
k('n', '<C-Up>', '<C-w><Up>', d('go to window above'))
k('n', '<C-Down>', '<C-w><Down>', d('go to window below'))

k('n', '<C-h>', ':vertical resize -2<CR>', d('Window narrower'))
k('n', '<C-l>', ':vertical resize +2<CR>', d('Window wider'))
k('n', '<C-k>', ':resize +2<CR>', d('window taller'))
k('n', '<C-j>', ':resize -2<CR>', d('window smaller'))

-- buffers
k('n', '<leader>bn', ':bnext<CR>', d('next buffer'))
k('n', '<leader>bp', ':bprevious<CR>', d('previous buffer'))

k(
  'n',
  '<leader>a1',
  ':set laststatus=3<CR>:highlight WinSeparator guibg=None<CR>:set winbar=%=%m\\ %t<CR>',
  d('Single')
)
k('n', '<leader>a2', ':set laststatus=2<CR>:highlight clear WinSeparator<CR>:set winbar=<CR>', d('Multiple'))

-- Case
k('n', '<leader>u', 'gUww', d('UPPERCASE'))
k('n', '<leader>U', 'gU<Right><Right>guww', d('Uppercase'))
k('n', '<leader>l', 'guww', d('lowercase'))

-- Search
k('n', '<leader> ', ':noh<CR>', d('clear search'))

-- lsp
k('n', '<leader>do', ':lua vim.diagnostic.config({virtual_text=true })<CR>', d('messages open'))
k('n', '<leader>dc', ':lua vim.diagnostic.config({virtual_text=false})<CR>', d('messages close'))

k('n', '<F1>', ':vertical help<cr>', d('Help'))
k('n', '<leader>h', ':vertical help ', d('Help'))

k('n', '<F5>', ':ls!<CR>', d('List buffers'))

k('n', '<F6>', ':set list<CR>', d('Show specials'))
k('n', '<F7>', ':set nolist<CR>', d('Hide specials'))

-- Visual --------------------------------------

-- Stay in indent mode
k('v', '<', '<gv', opts) -- verplaats blok naar rechts
k('v', '>', '>gv', opts) -- verplaats blok naar links

-- Move text up and down
k('v', '<A-j>', ':m .+1<CR>==', opts) -- verplaats regel omlaag
k('v', '<A-k>', ':m .-2<CR>==', opts) -- verplaats regel omhoog
k('v', 'p', '"_dP', opts)

-- Visual Block ------------------------------------

-- Move text up and down
k('x', '<A-j>', ':move \'>+1<CR>gv-gv', opts) -- verplaats meerdere regels omlaag
k('x', '<A-k>', ':move \'<-2<CR>gv-gv', opts) -- verplaats meerdere regels omhoog

-- -- Terminal ------------------------------------
--
-- -- Better terminal navigation
-- k("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- k("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- k("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- k("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
