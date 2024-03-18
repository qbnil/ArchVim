vim.keymap.set("n", "<leader>fo", "<cmd>lua require('fzf-lua').oldfiles({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>", { silent = true })
vim.keymap.set("n", "<leader>b", "<cmd>lua require('fzf-lua').buffers({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>", { silent = true })
vim.keymap.set("n", "<leader>ff", "<cmd>lua require('fzf-lua').builtin({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>", { silent = true })
vim.keymap.set("n", "<leader>hf", "<cmd>lua require('fzf-lua').command_history({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>", { silent = true })
vim.keymap.set("n", "<leader>fj", "<cmd>lua require('fzf-lua').jumps({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>", { silent = true })
vim.keymap.set("n", "<leader>fk", "<cmd>lua require('fzf-lua').keymaps({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>", { silent = true })
vim.keymap.set("n", "<leader>fh", "<cmd>lua require('fzf-lua').help_tags({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>", { silent = true })
-- lsp
vim.keymap.set('n', '<leader>lr', "<cmd>lua require('fzf-lua').lsp_references({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>")
vim.keymap.set('n', '<leader>ld', "<cmd>lua require('fzf-lua').lsp_definitions({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>")
vim.keymap.set('n', '<leader>ld', "<cmd>lua require('fzf-lua').lsp_declarations({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>")
vim.keymap.set('n', '<leader>li', "<cmd>lua require('fzf-lua').lsp_implementations({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>")
vim.keymap.set('n', '<leader>ls', "<cmd>lua require('fzf-lua').lsp_document_symbols({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>")
vim.keymap.set('n', '<leader>ltd', "<cmd>lua require('fzf-lua').lsp_typedefs({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>")
vim.keymap.set('n', '<leader>lgn', "<cmd>lua require('fzf-lua').diagnostics_document({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>")
-- git 
vim.keymap.set("n", "<leader>gb", "<cmd>lua require('fzf-lua').git_branches({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>", { silent = true })
vim.keymap.set("n", "<leader>gf", "<cmd>lua require('fzf-lua').git_files({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>", { silent = true })
vim.keymap.set("n", "<leader>gf", "<cmd>lua require('fzf-lua').git_commits({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>", { silent = true })
vim.keymap.set("n", "<leader>cm", "<cmd>lua require('fzf-lua').git_commits({fzf_opts = {['--color'] =  'gutter:-1'}})<cr>", { silent = true })
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
vim.keymap.set({ "n" }, "<leader>;", function()
    require("fzf-lua").files({
        cmd = "fd --type f --hidden --follow --exclude '.git' --exclude '.local' --exclude '.cache'",
        winopts = { preview = { hidden = "nohidden" } },
        fzf_opts = {['--color'] =  'gutter:-1'},
    })
end, { silent = true, desc = "Fuzzy complete file" })
vim.keymap.set({ "n" }, "<leader>n", function()
    require("fzf-lua").resume({
        cmd = "fd --type f --hidden --follow --exclude '.git' --exclude '.local' --exclude '.cache'",
        winopts = { preview = { hidden = "nohidden" } },
        fzf_opts = {['--color'] =  'gutter:-1'},
    })
end, { silent = true, desc = "Resume search" })
vim.keymap.set({ "n" }, "<leader>fp", function()
    require("fzf-lua").grep_project({
        cmd = "fd --type f --hidden --follow --exclude '.git' --exclude '.local' --exclude '.cache'",
        winopts = { preview = { hidden = "nohidden" } },
        fzf_opts = {['--color'] =  'gutter:-1'},
    })
end, { silent = true, desc = "Grep project" })
vim.keymap.set({ "n" }, "<leader>fbl", function()
    require("fzf-lua").grep_project({
        cmd = "fd --type f --hidden --follow --exclude '.git' --exclude '.local' --exclude '.cache'",
        winopts = { preview = { hidden = "nohidden" } },
        fzf_opts = {['--color'] =  'gutter:-1'},
    })
end, { silent = true, desc = "Find b-lines" })
vim.keymap.set({ "n" }, "<leader>fl", function()
    require("fzf-lua").grep_project({
        cmd = "fd --type f --hidden --follow --exclude '.git' --exclude '.local' --exclude '.cache'",
        winopts = { preview = { hidden = "nohidden" } },
        fzf_opts = {['--color'] =  'gutter:-1'},
    })
end, { silent = true, desc = "Find lines" })
vim.keymap.set({ "n" }, "<leader>fwn", function()
    require("fzf-lua").grep_project({
        cmd = "fd --type f --hidden --follow --exclude '.git' --exclude '.local' --exclude '.cache'",
        winopts = { preview = { hidden = "nohidden" } },
        fzf_opts = {['--color'] =  'gutter:-1'},
    })
end, { silent = true, desc = "Find word" })
