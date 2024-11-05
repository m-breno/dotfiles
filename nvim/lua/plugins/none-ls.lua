return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.completion.luasnip,
          null_ls.builtins.completion.spell,
          null_ls.builtins.diagnostics.codespell,
          null_ls.builtins.diagnostics.commitlint,
          null_ls.builtins.diagnostics.markdownlint,
          null_ls.builtins.diagnostics.pylint,
          null_ls.builtins.diagnostics.zsh,
          null_ls.builtins.formatting.black,
          null_ls.builtins.formatting.markdownlint,
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.textlint,
          null_ls.builtins.hover.dictionary,
          null_ls.builtins.hover.printenv,
        },
      })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
    opts = {
      ensure_installed = nil,
      automatic_installation = true,
    },
  },
}
