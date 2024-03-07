vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fm", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
--vim.keymap.set("n", "<leader>nop", "<nop>")
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
vim.keymap.set("t", "<A-w>", [[<C-\><C-n><C-w>w]])
vim.keymap.set({"n", "v"}, "<A-w>", [[<C-w>w]])
vim.keymap.set({"n","v"}, "<A-q>", "<cmd>:q<CR>")
vim.keymap.set("t", "<A-q>", "<cmd>:q<CR>")
vim.keymap.set({"n", "v"}, "j", [[gj]])
vim.keymap.set({"n", "v"}, "k", [[gk]])
--  vim.api.nvim_set_keymap('n', '<cr>', '<Cmd>lua require("autonewline").cr()<CR>', { noremap = true, expr = true })
--  local indent_tags = function()
  --  local line = vim.api.nvim_get_current_line()
  --  local col = vim.api.nvim_win_get_cursor(0)[2]
  --  local before = line:sub(col - 2, col - 2)
  --  local after = line:sub(col - 1, col - 1)

  --  if before == ">" and after == "<" then
    --  return "<CR><C-o>O<Tab>"
  --  end

  --  return "<CR>"
--  end

--  vim.api.nvim_set_keymap('i', '<CR>', 'v:lua.require("remap").indent_tags()', { noremap = true, expr = true })
