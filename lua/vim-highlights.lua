vim.schedule(function()
  local transparent = { bg = "none" }

  local groups = {
    "Normal",
    "NormalNC",
    "EndOfBuffer",
    "SignColumn",
    "NormalFloat",
    "FloatBorder",
    "NeoTreeNormal",
    "NeoTreeNormalNC",
    "NeoTreeEndOfBuffer",
  }

  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, transparent)
  end
end)
