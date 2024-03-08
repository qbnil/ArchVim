local dap = require("dap")

-- Set keymaps to control the debugger
vim.keymap.set('n', '<leader>dc', require 'dap'.continue)
--  vim.keymap.set('n', '<leader>do', require 'dap'.step_over)
--  vim.keymap.set('n', '<leader>di', require 'dap'.step_into)
--  vim.keymap.set('n', '<leader>du', require 'dap'.step_out)
vim.keymap.set('n', '<leader>B', require 'dap'.toggle_breakpoint)
--  vim.keymap.set('n', '<leader>B', function()
  --  require 'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))
--  end)
--  require("dap").setup({
  --  -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
  --  debugger_path = "~/.local/share/nvim/mason/bin/js-debug-adapter", -- Path to vscode-js-debug installation.
  --  -- debugger_cmd = { "extension" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
  --  adapters = { 'chrome', 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost', 'node', 'chrome' }, -- which adapters to register in nvim-dap
  --  -- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
  --  -- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
  --  -- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
--  })
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
