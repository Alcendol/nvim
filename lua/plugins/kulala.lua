return {
  "mistweaverco/kulala.nvim",
  ft = "http", -- Only load this plugin when opening an .http or .rest file
  opts = {},
  keys = {
    { "<leader>kr", function() require("kulala").run() end, desc = "Run HTTP Request" },
    { "<leader>kt", function() require("kulala").toggle_view() end, desc = "Toggle Headers/Body view" },
    { "<leader>kc", function() require("kulala").copy() end, desc = "Copy as cURL" },
  },
}
