return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
      size = 20,                    -- height of horizontal terminal
      open_mapping = [[<c-\>]],     -- toggle terminal with Ctrl + \
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,            -- dim terminal background
      start_in_insert = true,        -- enter insert mode automatically
      insert_mappings = true,
      persist_size = true,
      direction = "float",           -- float, horizontal, vertical, tab
      close_on_exit = true,
      shell = vim.o.shell,
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)

      -- optional: terminal keymaps
      function _G.set_terminal_keymaps()
        local opts = { buffer = 0 }
        vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
        vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
        vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
        vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
        vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
        vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
      end

      vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
    end,
  },
}
