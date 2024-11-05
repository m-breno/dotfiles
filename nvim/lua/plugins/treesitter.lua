return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    auto_install = true,
    --ensure_installed = { 'lua', 'javascript', 'html', 'css', 'python', 'hyprlang', 'bash', 'markdown', 'markdown_inline' },
    --sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  },
}
