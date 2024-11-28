return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"RRethy/base16-nvim",
			"archibate/lualine-time",
		},
		event = "BufRead",
		opts = {
			options = {
				disabled_filetypes = { "dashboard", "neo-tree" },
				theme = "auto",
				icons_enabled = true,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff" },
				lualine_c = { "filename" },
				lualine_x = { "diagnostics" },
				lualine_y = { "filetype", "location" },
				lualine_z = {
					{
						"ctime",
						format = '%H:%M',
					},
				},
			},
		},
	},
}
