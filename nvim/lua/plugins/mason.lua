return {
  'mason-org/mason.nvim',
  version = "^1.0.0",
  dependencies = {
    { 'mason-org/mason-lspconfig.nvim', version = "^1.0.0" },
  },
  config = function()
    require('mason').setup({
      ui = {
        icons = {
          package_installed = '',
          package_pending = '󱦠',
          package_uninstalled = ''
        }
      }
    })

    require('mason-lspconfig').setup({
      ensure_installed = { 'emmet_ls', 'rust_analyzer', 'lua_ls', 'denols' },
      automatic_installation = true
    })
  end

}
