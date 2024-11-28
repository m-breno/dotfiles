return {
	{
		"williamboman/mason.nvim",
		event = "BufRead",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		event = "BufRead",
		opts = {
			ensure_installed = { "bashls", "cssls", "html", "hyprls", "marksman", "pyright", "lua_ls" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		event = "BufRead",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.hyprls.setup({
				capabilities = capabilities,
			})
			lspconfig.marksman.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
		end,
	},
}
