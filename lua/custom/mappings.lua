local M = {}

M.general = {
  n = {
    ["<Esc>"] = { ":noh <CR>", "Clear highlights", opts = { silent = true } },
  },
  i = {
    ["jk"] = { "<Esc>", "Quit insert mode" },
  },
}

M.disabled = {
  n = {
    ["<Tab>"] = ""
  }
}

return M
