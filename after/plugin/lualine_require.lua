local lualine_require = {}
function lualine_require.lazy_require(modules)
  local result = {}
  for name, path in pairs(modules) do
    package.path = package.path .. ';' .. vim.fn.stdpath('config') .. '/?/init.lua'
    result[name] = require(path)
  end
  return result
end
return lualine_require
