vim.lsp.config('*', { capabilities = require('blink.cmp').get_lsp_capabilities() })
vim.lsp.inlay_hint.enable(true)

vim.diagnostic.config({
  virtual_lines = true,
  virtual_text = false,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
      -- border = "rounded",
      source = true,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '',
      [vim.diagnostic.severity.WARN] = '',
      [vim.diagnostic.severity.HINT] = '󰍉',
      [vim.diagnostic.severity.INFO] = '',
    },
  },
})

vim.lsp.enable({
  'denols',
  'lua_ls',
  'rust_analyzer',
  'clangd'
})


