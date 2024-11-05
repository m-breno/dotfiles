---@diagnostic disable: different-requires
-- From mini.basics
local gr = vim.api.nvim_create_augroup("MiniBasicsAutocommands", {})

local au = function(event, pattern, callback, desc)
  vim.api.nvim_create_autocmd(event, { group = gr, pattern = pattern, callback = callback, desc = desc })
end

au("TextYankPost", "*", function()
  vim.highlight.on_yank()
end, "Highlight yanked text")

--vim.api.nvim_create_autocmd("CmdlineEnter", { command = [[set norelativenumber]] })
--vim.api.nvim_create_autocmd("CmdlineLeave", { command = [[set relativenumber]] })

au(
  "ModeChanged",
  -- Show relative numbers only when they matter (linewise and blockwise
  -- selection) and 'number' is set (avoids horizontal flickering)
  "*:[V\x16]*",
  function()
    vim.wo.relativenumber = vim.wo.number
  end,
  "Show relative line numbers"
)
au(
  "ModeChanged",
  "[V\x16]*:*",
  -- Hide relative numbers when neither linewise/blockwise mode is on
  function()
    vim.wo.relativenumber = string.find(vim.fn.mode(), "^[V\22]") ~= nil
  end,
  "Hide relative line numbers"
)

-- Auto update Lazy packages
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd("VimEnter", {
    group = augroup("autoupdate"),
    callback = function()
        if require("lazy.status").has_updates then
            require("lazy").update({ show = false, })
        end
    end,
})
