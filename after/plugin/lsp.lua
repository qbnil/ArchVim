local lsp = require("lsp-zero")
local nvim_lsp = require("lspconfig")

lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'phpactor',
})

--  -- Fix Undefined global 'vim'
lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        client.server_capabilities.semanticTokensProvider = nil
        if client.server_capabilities.hoverProvider then
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
        end
        local opts = {noremap = true, silent = true}
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    end,
});

nvim_lsp.tsserver.setup{
    -- Add server-specific settings here
}
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true
nvim_lsp.phpactor.setup{
    -- Add server-specific settings here
    capabilities = capabilities,
    single_file_mode = true,
    filetypes = { 'php' },
    root_dir = function(fname)    
        return lsp.util.find_git_ancestor(fname) or vim.loop.os_homedir()
    end
}
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
--  local cmp_mappings = lsp.defaults.cmp_mappings({
  --  ['<A-b>'] = cmp.mapping.select_prev_item(cmp_select),
  --  ['<A-;>'] = cmp.mapping.select_next_item(cmp_select),
  --  ['<A-d>'] = cmp.mapping.confirm({ select = true }),
  --  ["<>"] = cmp.mapping.complete(),
--  })

--  cmp_mappings['<Tab>'] = nil
--  cmp_mappings['<S-Tab>'] = nil

--  lsp.setup_nvim_cmp({
  --  mapping = cmp_mappings })
lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = '⚠️W',
        hint = '💡',
        info = '📌'
    }
})




lsp.setup()

--to disable semantic highlighting
--  lsp.set_server_config({
    --  on_init = function(client)
        --  client.server_capabilities.semanticTokensProvider = nil
    --  end,
--  })

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = false,
    underline = true,
    severity_sort = false,
    float = true,
})

nvim_lsp.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'}
      }
    }
  }
})

