-- Identation
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set autoindent")
--vim.cmd("set filetype indent on")
vim.cmd("set shiftround")
vim.cmd("set smarttab")

-- Search
vim.cmd("set hlsearch")
vim.cmd("set ignorecase")
vim.cmd("set incsearch")
vim.cmd("set smartcase")

-- Text Rendering
vim.cmd("set display+=lastline")
vim.cmd("set encoding=utf-8")
vim.cmd("set linebreak")
vim.cmd("set scrolloff=5")
vim.cmd("set wrap")

-- UI
vim.cmd("set cursorline")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set title")
-- Code Folding
--vim.cmd("set foldmethod=indent")
--vim.cmd("set foldnestmax=3")
vim.cmd("set nofoldenable")

-- Misc
vim.cmd("set autoread")
vim.cmd("set backspace=indent,eol,start")
vim.cmd("set backupdir=~/.cache/nvim")
vim.cmd("set confirm")

vim.g.mapleader = " "
