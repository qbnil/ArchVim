vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("init_lua_source", { clear = true }),
  callback = function()
    vim.cmd("source " .. vim.fn.stdpath("config") .. "/after/plugin/lspsaga.lua")
        vim.cmd("source " .. vim.fn.stdpath("config") .. "/after/plugin/notify.lua")
  end,
})
