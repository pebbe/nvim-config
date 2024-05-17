local opt = vim.opt -- for conciseness

opt.listchars = 'tab:>-,trail:•,extends:»,precedes:«,nbsp:␣'

-- backups
opt.backup = true

-- line numbers
--opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

opt.tabstop = 8 -- hoeveel spaties een echte TAB inneemt
opt.softtabstop = 4 -- wanneer je TAB toetst
opt.shiftwidth = 4 -- automatisch inspringen
opt.autoindent = true -- copy indent from current line when starting new one

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

opt.signcolumn = 'yes' -- 'number' -- show sign column so that text doesn't shift

-- maakt het mogelijk de cursor te verplaatsen naar waar niks is
opt.virtualedit = 'block'

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
