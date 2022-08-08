local fb_actions = require "telescope".extensions.file_browser.actions
local actions = require "telescope.actions"
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
      border = false,
      disable_devicons = true,
      initial_mode = "normal",
      previewer = false,
      prompt_prefix = '',
      prompt_title = false,
      theme = "dropdown",
      -- map l to enter
      path = "%:p:h",
      mappings = {
        ["n"] = {
          ["c"] = false,
          ["e"] = false,
          -- file operations
          ["a"] = fb_actions.create,                  -- create file/dir at `path` (trailing separator creates dir)
          ["r"] = fb_actions.rename,
          ["m"] = fb_actions.move,
          ["y"] = fb_actions.copy,
          ["d"] = fb_actions.remove,
          ["o"] = fb_actions.open,                    -- open file/directory with default system application
          ["A"] = fb_actions.toggle_all,
          ["."] = fb_actions.toggle_hidden,
          -- movement
          ["h"] = fb_actions.goto_parent_dir,
          ["l"] = actions.select_default,
          ["~"] = fb_actions.goto_home_dir,
          -- other
          ["="] = fb_actions.change_cwd,
          ["-"] = fb_actions.goto_cwd,
        },
      },
    },
  },
}
