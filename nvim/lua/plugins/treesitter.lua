return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { 'asm', 'c', 'cpp', 'haskell', 'lua', 'rust', 'javascript', 'typescript', 'html', 'css', 'markdown', 'markdown_inline' },
      sync_install = false,
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true }
    }
    )
  end
}
