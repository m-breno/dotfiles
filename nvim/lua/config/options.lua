-- From mini.basics

vim.g.mapleader       = " " -- Use space as the one and only true Leader key
vim.g.maplocalleader  = " "

-- General
vim.opt.undofile      = true  -- Enable persistent undo (see also `:h undodir`)
vim.opt.backup        = false -- Don't store backup while overwriting the file
vim.opt.writebackup   = false -- Don't store backup while overwriting the file

vim.opt.mouse         = "a"   -- Enable mouse for all available modes

--vim.cmd('filetype plugin indent on') -- Enable all filetype plugins

-- Appearance
vim.opt.breakindent   = true -- Indent wrapped lines to match line start
vim.opt.cursorline    = true -- Highlight current line
vim.opt.linebreak     = true -- Wrap long lines at 'breakat' (if 'wrap' is set)
vim.opt.number        = true -- Show line numbers
--vim.opt.relativenumber = true -- Relative line numbers
vim.opt.splitbelow    = true -- Horizontal splits will be below
vim.opt.splitright    = true -- Vertical splits will be to the right

--vim.opt.ruler		    = false 	-- Don't show cursor position in command line
--vim.opt.showmode		= false 	-- Don't show mode in command line
vim.opt.wrap          = true    -- Display long lines as just one line

vim.opt.signcolumn    = "yes"   -- Always show sign column (otherwise it will shift text)
vim.opt.fillchars     = "eob: " -- Don't show `~` outside of buffer

-- Editing
vim.opt.ignorecase    = true -- Ignore case when searching
vim.opt.incsearch     = true -- Show search results while typing
vim.opt.infercase     = true -- Infer letter cases for a richer built-in keyword completion
vim.opt.smartcase     = true -- Don't ignore case when searching if pattern has upper case
vim.opt.smartindent   = true -- Make indenting smart

--vim.opt.completeopt = "menuone,noinsert,noselect" -- Customize completions
vim.opt.virtualedit   = "block"  -- Allow going past the end of line in visual block mode
vim.opt.formatoptions = "qjl1"   -- Don't autoformat comments

vim.opt.shortmess:append("WcC")  -- Reduce command line messages
vim.opt.splitkeep     = "screen" -- Reduce scroll during window split

vim.opt.termguicolors = true     -- Enable gui colors

--vim.opt.pumblend = 10         	-- Make builtin completion menus slightly transparent
--vim.opt.pumheight = 10          -- Make popup menu smaller
--vim.opt.winblend = 10           -- Make floating windows slightly transparent

-- ?
vim.opt.autowrite     = false -- Auto save files
vim.opt.autowriteall  = false -- when :q etc

-- Use 2 spaces as tab
vim.opt.tabstop       = 2
vim.opt.shiftwidth    = 2
vim.opt.shiftround    = true
vim.opt.expandtab     = false

vim.opt.scrolloff     = 6 -- Lines of context
vim.opt.sidescrolloff = 8 -- Columns of context

-- Don't show mode in statusline (for lualine)
vim.opt.showmode      = false

-- Show a line at column 80
vim.opt.colorcolumn   = "80"

-- Wrap lines at 80 columns
vim.opt.textwidth     = 80
