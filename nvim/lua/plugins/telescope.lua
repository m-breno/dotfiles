return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Telescope find files" },
			{ "<leader>fg", "<cmd>Telescope live_grep<CR>",  desc = "Telescope live grep" },
			{ "<leader>fb", "<cmd>Telescope buffers<CR>",    desc = "Telescope buffers" },
			{ "<leader>fh", "<cmd>Telescope help_tags<CR>",  desc = "Telescope help tags" },
			{ "<leader>ft", "<cmd>TodoTelescope<CR>",        desc = "Telescope TODOs" },
		},
		cmd = "Telescope"
	},

	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
