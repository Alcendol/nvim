return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    -- @type snacks.Config
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
      dashboard = {
        enabled = true,
        sections = {
          { section = "header" },
          { section = "keys",   gap = 1, padding = 1 },
          { section = "startup" },
          {
            section = "terminal",
            cmd = "clear && ascii-image-converter ~/Pictures/Downloaded/emyu.png -C -c",
            -- cmd = 'clear && chafa ~/Pictures/Downloaded/PrabowoGibran.png',
            random = 10,
            pane = 2,
            indent = 4,
            height = 30,
          },
        },
      },
      explorer = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      picker = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
  },
}
