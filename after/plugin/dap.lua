local dap = require("dap")

-- Set keymaps to control the debugger
vim.keymap.set('n', '<leader>dc', require 'dap'.continue)
vim.keymap.set('n', '<leader>do', require 'dap'.step_over)
vim.keymap.set('n', '<leader>dh', require 'dap'.step_into)
vim.keymap.set('n', '<leader>dw', require 'dap'.step_out)
-- @TODO make this work
--  vim.keymap.set('n', '<leader>db', require 'dap'.step_back)
vim.keymap.set('n', '<leader>B', require 'dap'.toggle_breakpoint)
--  vim.keymap.set('n', '<leader>B', function()
  --  require 'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))
--  end)
dap.adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = "${port}",
  executable = {
    command = "node",
    -- 💀 Make sure to update this path to point to your installation
    args = {".local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js", "${port}"},
  }
}
dap.configurations.javascript = {
  {
    type = "pwa-node",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    cwd = "${workspaceFolder}",
  },
}
dap.adapters.firefox = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '.local/share/nvim/mason/packages/firefox-debug-adapter/dist/adapter.bundle.js'},
}

dap.configurations.typescript = {
  {
  name = 'Debug with Firefox',
  type = 'firefox',
  request = 'launch',
  reAttach = true,
  url = 'http://localhost:3000',
  webRoot = '${workspaceFolder}',
  firefoxExecutable = '/usr/bin/firefox'
  }
}
