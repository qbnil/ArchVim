--  package.path = package.path .. ";~/.config/nvim/after/plugin/project_term.lua"
--  local var = require'project_term'
--  var.toggle()
-- Get the home directory
--  local home = os.getenv("HOME")
--  -- Construct the path to the directory where your file is located
--  local myModulePath = home .. "/.config/nvim/after/plugin/?.lua"
--  -- Add the directory to package.path
--  package.path = package.path .. ";" .. myModulePath
--  -- Now you can require your module
--  local myModule = require("project_term")-- Alternatively, if you want to include the file as a module, ensure it's in the Lua pth or use the absolute path
--  -- require(filePath)
--  vim.keymap.set("n", "<leader>t", myModule.toggle)
--  function script_path()
   --  local str = debug.getinfo(2, "S").source:sub(2)
   --  return str:match("(.*/)")
--  end
require("toggleterm").setup{
    direction = 'float',
    --  size = 5,
    auto_scroll = true, -- automatically scroll to the bottom on terminal output
  -- This field is only relevant if direction is set to 'float'
    float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = single, -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
    -- like `size`, width, height, row, and col can be a number or function which is passed the current terminal
    width = 80, 
    height = 15,
    --  row = <value>,
    --  col = <value>,
    --  winblend = 3,
    --  zindex = <value>,
    title_pos = center -- 'left' | 'center' | 'right', position of the title of the floating window
  },
}
--  print(script_path())
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>")
vim.keymap.set("n", "<leader>T", ":ToggleTerm direction=horizontal<CR>")

