local lspconfig = require('lspconfig')
vim.lsp.inlay_hint.enable(true)
local capabilities = require('blink.cmp').get_lsp_capabilities()
-- local util = require 'lspconfig.util'
-- local capabilities = vim.lsp.protocol.make_client_capabilities()

lspconfig['rust_analyzer'].setup({ capabilities = capabilities });
lspconfig['denols'].setup({ capabilities = capabilities });
lspconfig['clangd'].setup({ capabilities = capabilities });
-- lspconfig['hls'].setup({ capabilities = capabilities });
lspconfig['pyright'].setup({ capabilities = capabilities });
lspconfig['marksman'].setup({ capabilities = capabilities });
lspconfig['tailwindcss'].setup({ capabilities = capabilities });
lspconfig['cssls'].setup({ capabilities = capabilities });
lspconfig['superhtml'].setup({ capabilities = capabilities });
-- lspconfig['ts_ls'].setup({
--   capabilities = capabilities,
--   root_dir = util.root_pattern('index.html')
-- });

lspconfig['emmet_ls'].setup({
  capabilities = capabilities,
  filetypes = { 'html', 'javascriptreact', 'typescriptreact' },
  init_options = {
    html = {
      options = {
        ['bem.enabled'] = true,
      },
    },
  }
})

lspconfig['lua_ls'].setup({
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
});
