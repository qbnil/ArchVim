vim.keymap.set("n", "<leader>;", "<cmd>lua require('fzf-lua').files({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>", { silent = true })
vim.keymap.set("n", "<leader>fo", "<cmd>lua require('fzf-lua').oldfiles({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>", { silent = true })
vim.keymap.set("n", "<leader>fp", "<cmd>lua require('fzf-lua').grep_project({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>", { silent = true })
vim.keymap.set("n", "<leader>fb", "<cmd>lua require('fzf-lua').buffers({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>", { silent = true })
vim.keymap.set("n", "<leader>fbl", "<cmd>lua require('fzf-lua').blines({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>", { silent = true })
vim.keymap.set("n", "<leader>fl", "<cmd>lua require('fzf-lua').lines({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>", { silent = true })
vim.keymap.set("n", "<leader>ff", "<cmd>lua require('fzf-lua').builtin({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>", { silent = true })
vim.keymap.set("n", "<leader>hf", "<cmd>lua require('fzf-lua').command_history({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>", { silent = true })
vim.keymap.set("n", "<leader>fj", "<cmd>lua require('fzf-lua').jumps({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>", { silent = true })
vim.keymap.set("n", "<leader>fk", "<cmd>lua require('fzf-lua').keymaps()({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>", { silent = true })
vim.keymap.set("n", "<leader>fk", "<cmd>lua require('fzf-lua').resume()({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>", { silent = true })
vim.keymap.set("n", "<leader>fh", "<cmd>lua require('fzf-lua').help_tags()<CR>", { silent = true })
vim.keymap.set("n", "<leader>fwn", "<cmd>lua require('fzf-lua').live_grep_native()<CR>", { silent = true })
-- lsp
vim.keymap.set('n', '<leader>lr', "<cmd>lua require('fzf-lua').lsp_references({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>")
vim.keymap.set('n', '<leader>ld', "<cmd>lua require('fzf-lua').lsp_definitions({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>")
vim.keymap.set('n', '<leader>lD', "<cmd>lua require('fzf-lua').lsp_declarations({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>")
vim.keymap.set('n', '<leader>li', "<cmd>lua require('fzf-lua').lsp_implementations({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>")
vim.keymap.set('n', '<leader>lds', "<cmd>lua require('fzf-lua').lsp_document_symbols({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>")
vim.keymap.set('n', '<leader>ltd', "<cmd>lua require('fzf-lua').lsp_typedefs({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>")
vim.keymap.set('n', '<leader>lgn', "<cmd>lua require('fzf-lua').diagnostics_document({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>")
-- git 
vim.keymap.set("n", "<leader>gb", "<cmd>lua require('fzf-lua').git_branches({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>", { silent = true })
vim.keymap.set("n", "<leader>gf", "<cmd>lua require('fzf-lua').git_files({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>", { silent = true })
vim.keymap.set("n", "<leader>gf", "<cmd>lua require('fzf-lua').git_commits({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>", { silent = true })
require('fzf-lua').setup{
  winopts = {
    fullscreen = false,
    height = 0.8,
    width = 0.9,
    border = 'rounded',
    preview = {
      vertical = 'up:60%',      -- up|down:size
      --  flip_columns   = 100,             -- #cols to switch to horizontal on flex
      --  horizontal     = 'right:50%',     -- right|left:size
      --hidden         = 'hidden',      -- hidden|nohidden
      layout = "vertical"
    },
  },
}
