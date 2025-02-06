local lspconfig = require('lspconfig')
vim.lsp.inlay_hint.enable(true)
local capabilities = require('blink.cmp').get_lsp_capabilities()
-- local capabilities = vim.lsp.protocol.make_client_capabilities()

lspconfig['rust_analyzer'].setup({ capabilities = capabilities });
lspconfig['denols'].setup({ capabilities = capabilities });
lspconfig['clangd'].setup({ capabilities = capabilities });
lspconfig['hls'].setup({ capabilities = capabilities });
lspconfig['pyright'].setup({ capabilities = capabilities });
lspconfig['marksman'].setup({ capabilities = capabilities });
lspconfig['tailwindcss'].setup({ capabilities = capabilities });
lspconfig['html'].setup({
  filetypes = { 'html' },
  capabilities = capabilities
});

lspconfig['emmet_ls'].setup({
  capabilities = capabilities,
  filetypes = { 'css', 'eruby', 'html', 'javascript', 'javascriptreact', 'less', 'sass', 'scss', 'svelte', 'pug', 'typescriptreact', 'vue' },
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
