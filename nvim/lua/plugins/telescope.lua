return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  keys = {
    { '<leader>td', '<cmd>Telescope diagnostics<cr>',  desc = 'Show diagnostics.' },
    { '<leader>tf', '<cmd>Telescope find_files<cr>',   desc = 'Find files.' },
    { '<leader>tg', '<cmd>Telescope live_grep<cr>',    desc = 'Live grep.' },
    { '<leader>tt', '<cmd>TodoTelescope<cr>',          desc = 'Find todos.' },
    { '<leader>tb', '<cmd>Telescope git_branches<cr>', desc = 'Find todos.' },
    { '<leader>tc', '<cmd>Telescope git_commits<cr>',  desc = 'Find todos.' },
  },
}
