local lspconfig = require('lspconfig');
local cmp_nvim_lsp = require('cmp_nvim_lsp');
local capabilities = cmp_nvim_lsp.default_capabilities()

lspconfig['cssls'].setup({ capabilities = capabilities });
lspconfig['html'].setup({ capabilities = capabilities });
lspconfig['rust_analyzer'].setup({ capabilities = capabilities });
lspconfig['denols'].setup({});
lspconfig['clangd'].setup({});
lspconfig['hls'].setup({});
lspconfig['pyright'].setup({});
lspconfig['marksman'].setup({});

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
