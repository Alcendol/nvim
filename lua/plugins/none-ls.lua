return {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local nls = require("null-ls")

    nls.setup({
      sources = {
        nls.builtins.formatting.stylua,
        nls.builtins.formatting.prettier,
        nls.builtins.formatting.rubocop,
        nls.builtins.formatting.csharpier,
        nls.builtins.diagnostics.rubocop,
      },
    })

    vim.keymap.set("n", "<leader>gf", function()
      vim.lsp.buf.format()
    end, { desc = "Format file" })

    vim.keymap.set("n", "<leader>ge", function()
      local pos = vim.api.nvim_win_get_cursor(0)
      local line = pos[1] - 1
      local diagnostics = vim.diagnostic.get(0, { lnum = line })
      if vim.tbl_isempty(diagnostics) then
        vim.notify("No errors at cursor!", vim.log.levels.INFO)
      else
        vim.notify(diagnostics[1].message, vim.log.levels.ERROR)
      end
    end, { desc = "Show diagnostic at cursor" })
  end,
}
