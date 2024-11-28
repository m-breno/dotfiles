return {
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
		},
		config = function()
			local logo = [[
                       _           
 _ __   ___  _____   _(_)_ __ ___  
| '_ \ / _ \/ _ \ \ / / | '_ ` _ \ 
| | | |  __/ (_) \ V /| | | | | | |
|_| |_|\___|\___/ \_/ |_|_| |_| |_|

  ]]

			logo = string.rep("\n", 8) .. logo .. "\n\n"

			require("dashboard").setup({
				theme = "doom",
				config = {
					header = vim.split(logo, "\n"),
					center = {
						{
							icon = "󰱼 ",
							icon_hl = "Title",
							desc = "Find files          ",
							desc_hl = "String",
							key = "f",
							keymap = "SPC f",
							key_hl = "Number",
							key_format = " %s",
							action = "Telescope find_files",
						},
						{
							icon = "󰝒 ",
							icon_hl = "Title",
							desc = "New file             ",
							desc_hl = "String",
							key = "n",
							keymap = "SPC f",
							key_hl = "Number",
							key_format = " %s",
							action = "ene | startinsert",
						},
						{
							icon = "󱎸 ",
							icon_hl = "Title",
							desc = "Live grep           ",
							desc_hl = "String",
							key = "g",
							keymap = "SPC f",
							key_hl = "Number",
							key_format = " %s",
							action = "Telescope live_grep",
						},
						{
							icon = "󰝖 ",
							icon_hl = "Title",
							desc = "TO-DOs              ",
							desc_hl = "String",
							key = "t",
							keymap = "SPC f",
							key_hl = "Number",
							key_format = " %s",
							action = "TodoTelescope",
						},
						{
							icon = "󰛽 ",
							icon_hl = "Title",
							desc = "Open file tree       ",
							desc_hl = "String",
							key = "b",
							keymap = "^",
							key_hl = "Number",
							key_format = " %s",
							action = "Neotree reveal",
						},
						{
							icon = "󰈆 ",
							icon_hl = "Title",
							desc = "Quit                ",
							desc_hl = "String",
							key = "q",
							keymap = ":",
							key_hl = "Number",
							key_format = " %s",
							action = ":q",
						},
					},
					footer = function()
						local stats = require("lazy").stats()
						local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
						return { "󱎫 Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms", }
					end,
				},
			})
		end,
	},
}
