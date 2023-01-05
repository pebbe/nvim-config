vim.g.mapleader = ' '

local k = vim.keymap.set
local opts = { noremap = true, silent = true }
--local term_opts = { silent = true }

local d = function(txt)
	return { noremap = true, silent = true, desc = txt }
end

-- normal -------------------------------------------------------

-- spelling
k('n', '<leader>xn', ':w<cr>:terminal aspell --lang=nl check %<cr>:e! %<cr>', d('Nederlands'))
k('n', '<leader>xe', ':w<cr>:terminal aspell --lang=en check %<cr>:e! %<cr>', d('Engels'))
k('n', '<leader>N', ':setlocal spell spelllang=nl<CR>', d('Nederlandse spelling'))
k('n', '<leader>E', ':setlocal spell spelllang=en<CR>', d('Engelse spelling'))

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

-- Case
k('n', '<leader>u', 'gUww', d('UPPERCASE'))
k('n', '<leader>U', 'gU<Right>w', d('Uppercase'))
k('n', '<leader>l', 'guww', d('lowercase'))

-- Search
k('n', '<leader>c', ':noh<CR>', d('clear search'))

-- telescope
local b = require('telescope.builtin')
k('n', '<leader>ff', b.find_files, d('find files'))
k('n', '<leader>fg', b.live_grep, d('live grep'))
k('n', '<leader>fb', b.buffers, d('buffers'))
k('n', '<leader>fh', b.help_tags, d('help tags'))
k('n', '<leader>fr', b.lsp_references, d('references'))
k('n', '<leader>fd', b.lsp_definitions, d('definition'))
k('n', '<leader>fci', b.lsp_incoming_calls, d('incoming calls'))
k('n', '<leader>fco', b.lsp_outgoing_calls, d('outgoing call'))
k('n', '<leader>fi', b.lsp_implementations, d('implementations'))
k('n', '<leader>ft', b.lsp_type_definitions, d('type definition'))

k('n', '<leader>gb', b.git_branches, d('branches'))
k('n', '<leader>gc', b.git_commits, d('commits'))
k('n', '<leader>gf', b.git_files, d('files'))
k('n', '<leader>gs', b.git_status, d('status'))
k('n', '<leader>gn', ':Gitsigns next_hunk<CR>', d('next hunk'))
k('n', '<leader>gp', ':Gitsigns prev_hunk<CR>', d('previous hunk'))
k('n', '<leader>gh', ':Gitsigns preview_hunk<CR>', d('view hunk'))
k('n', '<leader>gl', ':Gitsigns blame_line<CR>', d('blame line'))

-- neo-tree
k('n', '<F2>', ':Neotree toggle<CR>', d('Neotree'))
k('n', '<F8>', ':Neotree toggle show buffers right<CR>', d('Buffers'))

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
k('x', '<A-j>', ":move '>+1<CR>gv-gv", opts) -- verplaats meerdere regels omlaag
k('x', '<A-k>', ":move '<-2<CR>gv-gv", opts) -- verplaats meerdere regels omhoog

-- -- Terminal ------------------------------------
--
-- -- Better terminal navigation
-- k("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- k("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- k("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- k("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
