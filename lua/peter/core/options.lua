local opt = vim.opt -- for conciseness

-- TODO: waarom werkt dit niet meer?
opt.listchars = 'tab:>-,trail:•,extends:»,precedes:«,nbsp:␣'

opt.winborder = 'rounded' -- TODO: hoe krijg ik dit local voor elke buffer?

-- basic settings
opt.number = true --          line numbers
opt.relativenumber = false -- relative line numbers
opt.cursorline = true --      highlight the current cursor line
opt.scrolloff = 10 --         keep 10 lines above/below cursor
opt.sidescrolloff = 8 --      keep 8 columns left/right of cursor
opt.helplang = 'nl'

-- indentation
opt.tabstop = 8 --            hoeveel spaties een echte TAB inneemt
opt.softtabstop = 4 --        wanneer je TAB toetst
opt.shiftwidth = 4 --         automatisch inspringen
opt.expandtab = false
opt.smartindent = true
opt.autoindent = true --      copy indent from current line when starting new one
opt.breakindent = true
opt.breakindentopt = 'shift:4'
opt.linebreak = true

-- search settings
opt.ignorecase = true --      ignore case when searching
opt.smartcase = true --       if you include mixed case in your search, assumes you want case-sensitive
opt.hlsearch = true
opt.incsearch = true
opt.gdefault = true
opt.inccommand = 'split'

-- visual
opt.signcolumn = 'yes' --     show sign column so that text doesn't shift
-- opt.colorcolumn = "72"

-- files
opt.autochdir = false
opt.backup = true
-- opt.undofile = true
opt.autoread = true

opt.virtualedit = 'block' -- maakt het mogelijk de cursor te verplaatsen naar waar niks is

-- backspace
opt.backspace = 'indent,eol,start' -- allow backspace on indent, end of line or insert mode start position

opt.whichwrap = '<,>,[,]'

-- clipboard
opt.clipboard:append('unnamedplus') -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- opt.iskeyword:append("-") -- consider string-string as whole word

-- checkhealth: geen waarschuwing voor perl en ruby
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

vim.g.python3_host_prog = '/usr/bin/python3'
