local lspconfig = require("lspconfig")
vim.lsp.inlay_hint.enable(true)
-- local capabilities = vim.lsp.protocol.make_client_capabilities()

lspconfig['rust_analyzer'].setup({});
lspconfig['denols'].setup({});
lspconfig['clangd'].setup({});
lspconfig['hls'].setup({});
lspconfig['pyright'].setup({});
lspconfig['marksman'].setup({});
lspconfig['tailwindcss'].setup({});

lspconfig['lua_ls'].setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
});


