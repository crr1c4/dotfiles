return {
  'mason-org/mason.nvim',
  version = "^1.0.0",
  dependencies = {
    { 'mason-org/mason-lspconfig.nvim', version = "^1.0.0" },
    'neovim/nvim-lspconfig'
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
      ensure_installed = { 'emmet_ls', 'rust_analyzer', 'lua_ls', 'marksman', 'clangd', 'denols', 'emmet_ls', 'superhtml' },
      automatic_installation = true
    })
  end

}
