vim.keymap.set('i', '<A-s>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
vim.keymap.set('i', '<A-h>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
vim.keymap.set('i', '<Tab>', "<cmd>lua if vim.fn.complete_info().src == 'copilot' or vim.fn.complete_info().src == 'codeium' then return '<C-e>' else return '<Tab>' end<CR>", {noremap = true, silent = true})
