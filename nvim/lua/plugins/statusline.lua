return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      theme = 'kanagawa',
    },
    extensions = { 'neo-tree' },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff' },
      lualine_c = { 'filename', 'diagnostics' },
      lualine_x = { 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' }
    },
  }
}


