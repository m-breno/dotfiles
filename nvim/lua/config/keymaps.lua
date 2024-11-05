-- From mini.basics

-- Move by visible lines
--vim.keymap.set({ 'n', 'x' }, 'j', [[v:count == 0 ? 'gj' : 'j']], { expr = true })
--vim.keymap.set({ 'n', 'x' }, 'k', [[v:count == 0 ? 'gk' : 'k']], { expr = true })

-- Move lines with <M-j> & <M-k>
vim.keymap.set("n", "<M-j>", "ddp", { desc = "Move line down" })
vim.keymap.set("n", "<M-k>", "ddkP", { desc = "Move line up" })

-- Copy/paste with system clipboard
vim.keymap.set({ "n", "x" }, "gy", '"+y', { desc = "Copy to system clipboard" })
vim.keymap.set("n", "gp", '"+p', { desc = "Paste from system clipboard" })
-- - Paste in Visual with `P` to not copy selected text (`:h v_P`)
vim.keymap.set("x", "gp", '"+P', { desc = "Paste from system clipboard" })

-- Reselect latest changed, put, or yanked text
vim.keymap.set(
  "n",
  "gv",
  '"`[" . strpart(getregtype(), 0, 1) . "`]"',
  { expr = true, replace_keycodes = false, desc = "visually select changed text" }
)

-- search inside visually highlighted text. use `silent = false` for it to
-- make effect immediately.
vim.keymap.set("x", "g/", "<esc>/\\%v", { silent = false, desc = "search inside visual selection" })

-- Window navigation
vim.keymap.set("n", "<C-H>", "<C-w>h", { desc = "Go to the left window" })
vim.keymap.set("n", "<C-J>", "<C-w>j", { desc = "Go to the down window" })
vim.keymap.set("n", "<C-K>", "<C-w>k", { desc = "Go to the up window" })
vim.keymap.set("n", "<C-L>", "<C-w>l", { desc = "Go to the right window" })

vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Go to the left window" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Go to the down window" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Go to the up window" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Go to the right window" })

vim.keymap.set("n", "<leader>wo", "<C-w>o", { desc = "Close all other windows" })
vim.keymap.set("n", "<leader>wq", "<C-w>q", { desc = "Quit a window" })
vim.keymap.set("n", "<leader>ws", "<C-w>s", { desc = "Split window" })
vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>wT", "<C-w>T", { desc = "Break out into a new tab" })
vim.keymap.set("n", "<leader>ww", "<C-w>w", { desc = "Switch windows" })
vim.keymap.set("n", "<leader>wx", "<C-w>x", { desc = "Swap current with next" })
vim.keymap.set("n", "<leader>w-", "<C-w>-", { desc = "Decrease height" })
vim.keymap.set("n", "<leader>w+", "<C-w>+", { desc = "Increase height" })
vim.keymap.set("n", "<leader>w<", "<C-w><", { desc = "Decrease width" })
vim.keymap.set("n", "<leader>w=", "<C-w>=", { desc = "Equally high and wide" })
vim.keymap.set("n", "<leader>w>", "<C-w>>", { desc = "Increase width" })
vim.keymap.set("n", "<leader>w_", "<C-w>_", { desc = "Max out the height" })
vim.keymap.set("n", "<leader>w|", "<C-w>|", { desc = "Max out the width" })



-- Window resize (respecting `v:count`)
vim.keymap.set(
  "n",
  "<C-Left>",
  '"<Cmd>vertical resize -" . v:count1 . "<CR>"',
  { expr = true, replace_keycodes = false, desc = "Decrease window width" }
)
vim.keymap.set(
  "n",
  "<C-Down>",
  '"<Cmd>resize -"          . v:count1 . "<CR>"',
  { expr = true, replace_keycodes = false, desc = "Decrease window height" }
)
vim.keymap.set(
  "n",
  "<C-Up>",
  '"<Cmd>resize +"          . v:count1 . "<CR>"',
  { expr = true, replace_keycodes = false, desc = "Increase window height" }
)
vim.keymap.set(
  "n",
  "<C-Right>",
  '"<Cmd>vertical resize +" . v:count1 . "<CR>"',
  { expr = true, replace_keycodes = false, desc = "Increase window width" }
)

-- Move only sideways in command mode. Using `silent = false` makes movements
-- to be immediately shown.
vim.keymap.set("c", "<M-h>", "<Left>", { silent = false, desc = "Left" })
vim.keymap.set("c", "<M-l>", "<Right>", { silent = false, desc = "Right" })

-- Don't `noremap` in insert mode to have these keybindings behave exactly
-- like arrows (crucial inside TelescopePrompt)
vim.keymap.set("i", "<M-h>", "<Left>", { noremap = false, desc = "Left" })
vim.keymap.set("i", "<M-j>", "<Down>", { noremap = false, desc = "Down" })
vim.keymap.set("i", "<M-k>", "<Up>", { noremap = false, desc = "Up" })
vim.keymap.set("i", "<M-l>", "<Right>", { noremap = false, desc = "Right" })

vim.keymap.set("t", "<M-h>", "<Left>", { desc = "Left" })
vim.keymap.set("t", "<M-j>", "<Down>", { desc = "Down" })
vim.keymap.set("t", "<M-k>", "<Up>", { desc = "Up" })
vim.keymap.set("t", "<M-l>", "<Right>", { desc = "Right" })

-- New file
vim.keymap.set("n", "<leader>n", "<cmd>ene | startinsert<cr>", { desc = "Create new file" })

-- LSP
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, { desc = "About this symbol" })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>ct", vim.lsp.buf.type_definition, { desc = "Type definition" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format file" })
