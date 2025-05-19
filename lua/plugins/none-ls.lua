return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.rubocop,
				null_ls.builtins.formatting.rubocop,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.csharpier,
        null_ls.builtins.diagnostics.eslint_d,
        -- require("none-ls.diagnostics.eslint_d"),
      },
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    vim.keymap.set("n", "<leader>ge", function()
      local pos = vim.api.nvim_win_get_cursor(0) -- {line, col}
      local line = pos[1] - 1 -- Lua index starts at 1, diagnostics use 0
      local diagnostics = vim.diagnostic.get(0, { lnum = line })

      if vim.tbl_isempty(diagnostics) then
        vim.notify("No errors at cursor!", vim.log.levels.INFO)
      else
        local message = diagnostics[1].message
        vim.notify(message, vim.log.levels.ERROR)
      end
    end, { desc = "Show diagnostic at cursor" })
	end,
}
