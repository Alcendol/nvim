return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          -- ["<leader>p"] = function(state)
          --   local node = state.tree:get_node()
          --   local path = node.path
          --   local ext = path:match("^.+%.(.+)$")
          --
          --   require("utils.preview").preview_file(path, ext)
          -- end,
        },
      },
      follow_current_file = {
        enabled = true,          -- This is the crucial setting
        leave_dirs_open = false, -- true will keep previously opened dirs open
      },
      hijack_netrw_behavior = "open_default", -- Ensures Neo-tree opens on `nvim .`
      filtered_items = {
        visible = false,
        show_hidden_count = true,
        hide_dotfiles = true,
        hide_gitignored = true,
      },
    }
  },
  keys = {
    { '<C-n>', ':Neotree filesystem toggle left<CR>', mode = { "n" } },
  }
}
