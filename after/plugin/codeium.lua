vim.keymap.set('i', '<A-s>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
vim.keymap.set('i', '<A-h>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
vim.keymap.set('i', '<A-c>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
