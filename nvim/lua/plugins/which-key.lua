-- TODO: all that
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
    reset = "modern"
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	keys = {
		{
			"<leader>f",
			name = "Telescope",
		},
	},
}
