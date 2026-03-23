vim.g.mapleader = " "
vim.keymap.set("n", "<leader>p", function()
  vim.fn.jobstart({ "imv", vim.fn.expand("%:p") }, { detach = true })
end)

vim.keymap.set("n", "<leader>t1", ":ToggleTerm 1<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>t2", ":ToggleTerm 2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>t3", ":ToggleTerm 3<CR>", { noremap = true, silent = true })

local function reveal_in_neotree(path)
  -- Open the file first
  vim.cmd("edit " .. path)
  -- Then reveal it in Neo-tree and close other directories
  vim.cmd("Neotree reveal current_file=true toggle_dirs=false")
end

-- Find Files
vim.keymap.set("n", "<leader>ff", function()
  Snacks.picker.files({
    on_submit = function(selection)
      reveal_in_neotree(selection.path)
    end,
  })
end, { desc = "Find Files" })

-- Live Grep
vim.keymap.set("n", "<leader>fg", function()
  Snacks.picker.grep({
    on_submit = function(selection)
      reveal_in_neotree(selection.path)
    end,
  })
end, { desc = "Live Grep" })

-- Recent Files
vim.keymap.set("n", "<leader>fr", function()
  Snacks.picker.recent({
    on_submit = function(selection)
      reveal_in_neotree(selection.path)
    end,
  })
end, { desc = "Recent Files" })
