local M = {}

local Terminal = require'toggleterm.terminal'.Terminal

M.toggle = function()
  local count = 0

  for char in string.gmatch(vim.api.nvim_eval("sha256(getcwd())"), '%S') do
    count = count + string.byte(char)
  end

  local term = Terminal:new({ count = count })

  term:toggle()
end

return M
