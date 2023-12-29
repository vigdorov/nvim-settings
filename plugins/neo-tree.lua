return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    local utils = require "astronvim.utils"

    opts.window.position = "right"
    opts.window.width = 60

    opts.window.mappings = {
          ["<space>"] = false, -- disable space until we figure out which-key disabling
          ["[b"] = "prev_source",
          ["]b"] = "next_source",
          F = utils.is_available "telescope.nvim" and "find_in_dir" or nil,
          O = "system_open",
          Y = "copy_selector",
          h = "parent_or_close",
          l = "child_or_open",
          o = "open",
          E = "expand_all_nodes",
          W = "close_all_nodes",
          ["<tab>"] = "next_source",
    }

    opts.filesystem.filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
    }

  end,
}
