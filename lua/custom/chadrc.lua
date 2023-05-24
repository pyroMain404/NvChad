---@type ChadrcConfig 
local M = {}

M.plugins = 'custom.plugins'
M.ui = { theme = 'catppuccin' }
M.mappings = {
  ['general'] = {
    i = {
      ['jk'] = { '<Esc>', 'Quit insert mode'}
    }
  }
}

return M
