---@type ChadrcConfig
local M = {}

M.ui = { theme = "catppuccin" }

M.plugins = "custom.plugins"

M.mappings = {
  ["general"] = {
    i = {
      ["jk"] = { "<Esc>", "Quit insert mode" },
    },
  },
}

return M
