require('code_runner').setup({
  filetype = {
    java = {
      "cd $dir &&",
      "javac $fileName &&",
      "java $fileNameWithoutExt"
    },
    python = "python3 -u",
    javascript = "node",
    typescript = "deno run",
    rust = {
      "cd $dir &&",
      "rustc $fileName &&",
      "$dir/$fileNameWithoutExt"
    },
    php = "php -f",
    bash = "bash -c",
    cplus = {
        "cd $dir &&",
        "g++ $fileName -o $fileNameWithoutExt &&",
        "./$fileNameWithoutExt"
    },
    go = {
        "cd $dir &&",
        "go run $fileName"
    }
  },
})
vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('v', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>fr', ':RunFile<CR>', { noremap = true, silent = false })
--  vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>pr', ':RunProject<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>cr', ':RunClose<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })
