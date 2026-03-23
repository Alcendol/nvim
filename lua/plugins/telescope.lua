return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
      "nvim-telescope/telescope-media-files.nvim",
    },

    opts = function()
      return {
        extensions = {
          ["ui-select"] = require("telescope.themes").get_dropdown({}),

          media_files = {
            filetypes = { "png", "webp", "jpg", "jpeg" },
            find_cmd = "fd",
          },
        },
      }
    end,

    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)

      -- load extensions
      telescope.load_extension("ui-select")
      telescope.load_extension("media_files")

      -- keymaps
      local builtin = require("telescope.builtin")
      -- vim.keymap.set("n", "<C-p>", builtin.find_files)
      -- vim.keymap.set("n", "<leader>fg", builtin.live_grep)
      vim.keymap.set("n", "<leader>fm", telescope.extensions.media_files.media_files)
    end,
  },
}
