return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'c', 'cpp', 'haskell', 'lua', 'rust', 'javascript', 'typescript', 'html', 'css' },
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = true,
    },
    indent = { enable = true },
    autotag = { enable = true }
  }
}
