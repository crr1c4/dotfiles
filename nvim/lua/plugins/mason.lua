return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
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
      ensure_installed = { 'rust_analyzer', 'lua_ls', 'hls', 'marksman', 'clangd', 'denols', 'emmet_ls' },
      automatic_installation = true
    })
  end

}
