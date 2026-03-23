return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod", lazy = true },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
  },
  cmd = {
    "DBUI",
    "DBUIToggle",
    "DBUIAddConnection",
    "DBUIFindBuffer",
  },
  init = function()
    -- These are vim global variables, which is why we use vim.g
    vim.g.db_ui_use_nerd_fonts = 1
    -- This saves your queries in a specific folder so you don't lose them
    vim.g.db_ui_save_location = vim.fn.stdpath("config") .. "/db_ui"
  end,
  keys = {
    { "<leader>db", "<cmd>DBUIToggle<CR>", desc = "Toggle Database UI" },
  },
}
