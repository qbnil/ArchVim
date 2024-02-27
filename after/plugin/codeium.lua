vim.keymap.set('i', '<A-s>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
vim.keymap.set('i', '<A-h>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
vim.keymap.set('i', '<Tab>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
-- <C-e> cancels the completion menu
vim.api.nvim_set_keymap('i', '<Tab>', [[<Cmd>lua if vim.fn.complete_info().src == 'copilot' or vim.fn.complete_info().src == 'codeium' then return '<C-e>' else return '<Tab>' end<CR>]], {noremap = true, silent = true})
