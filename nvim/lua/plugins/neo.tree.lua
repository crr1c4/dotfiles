return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  keys = {
    { '<leader>e', '<cmd>Neotree toggle<cr>', desc = 'neotree' },
  },
  opts = {
    enable_diagnostics = true,
    default_component_configs = {
      modified = {
        symbol = '',
        highlight = 'NeoTreeModified',
      },
    },
    window = {
      width = 30
    },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = true,
        hide_gitignored = false
      },
      hijack_netrw_behavior = 'disabled'
    }
  }
}
