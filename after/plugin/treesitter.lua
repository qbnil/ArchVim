-- lua/treesitter.lua
local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  ensure_installed = {
    'bash',
    'php',
    'c',
    'css',
    'html',
    'javascript',
    'json',
    'lua',
    'python',
    'typescript',
    'twig',
  },
  autotag = {
    enable = true,
  },
}
