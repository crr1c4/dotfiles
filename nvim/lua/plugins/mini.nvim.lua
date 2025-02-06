return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()
    require("mini.indentscope").setup()
    require("mini.pairs").setup()
    require('mini.hipatterns').setup()
    require('mini.comment').setup()
    require('mini.misc').setup()
    -- require('mini.icons').setup()
  end
}
