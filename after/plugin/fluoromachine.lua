require('fluoromachine').setup({
    theme = 'fluoromachine',
    glow =  true,
    colors = function(_, d)
    return {
      bg = '#160623',
      --  alt_bg = d('#190920', 20),
      --  cyan = '#49eaff',
      --  red = '#ff1e34',
      --  yellow = '#ffe756',
      --  orange = '#f38e21',
      --  pink = '#ffadff',
      --  purple = '#9544f7',
    }
  end,
})
vim.cmd.colorscheme 'fluoromachine'
