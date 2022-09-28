local fb_actions = require("telescope").extensions.file_browser.actions
local actions = require("telescope.actions")
return {
	defaults = {
		layout_config = {
			horizontal = {
				prompt_position = "bottom",
			},
		},
	},
	pickers = {
		find_files = {
			theme = "dropdown",
			previewer = false,
		},
	},
	extensions = {
		file_browser = {
			hijack_netrw = true,
			border = true,
			disable_devicons = true,
			initial_mode = "normal", -- insert or normal
			previewer = false,
			prompt_prefix = "",
			prompt_title = false,
			theme = "dropdown",
			path = "%:p:h",
			mappings = {
				n = {
					-- disabling what we don't want to see
					["e"] = false,
					["g"] = false,
					["<C-D>"] = false, -- preview_scrolling_down
					["<C-U>"] = false, -- preview_scrolling_up
					-- my prefs
					["~"] = fb_actions.goto_home_dir,
					-- move in and out of directories
					["h"] = fb_actions.goto_parent_dir,
					["l"] = actions.select_default,
				},
			},
		},
	},
}
