require'lspsaga'.setup({
    symbol_in_winbar = {
    },
    lightbulb = {
        enable = false,
        virtual_text = false,
    }
})
local function set_hl(name)
  -- get lspsaga highlights to list
  local highlights = vim.api.nvim_exec("filter " .. name .. " highlight", true)

  -- loop highlight
  for s in highlights:gmatch("[^\r\n]+") do
    -- split by first space
    local space = s:find(" ") or (#s + 1)
    local string = "hi " .. s:sub(1, space - 1) .. " guisp=#665c54 gui=underline guibg=#313131"
    vim.cmd(string)
  end
end

-- custom winbar colors
vim.cmd [[hi WinBar guisp=#08090 guibg=##08090]]
vim.cmd [[hi WinBarNC guisp=#08090 gui=underline guibg=#08090]]
--  vim.cmd [[hi LspSagaWinbarFileIcon guisp=#665c54 gui=underline guibg=#313131]]
set_hl("LspSagaWinbar")

