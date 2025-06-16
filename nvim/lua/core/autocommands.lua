vim.api.nvim_create_autocmd('User', {
  pattern = 'TelescopeFindPre',
  callback = function()
    vim.opt_local.winborder = 'none'
    vim.api.nvim_create_autocmd('WinLeave', {
      once = true,
      callback = function()
        vim.opt_local.winborder = 'rounded'
      end,
    })
  end,
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function()
    local opts = { noremap = true, silent = true }
    local map = vim.keymap.set
    map('n', '<leader>lc', vim.lsp.buf.code_action, opts)
    map('n', '<leader>ld', vim.lsp.buf.definition, opts)
    map('n', '<leader>lf', vim.lsp.buf.format, opts)
    map('n', '<leader>lh', vim.lsp.buf.hover, opts)
    map('n', '<leader>lr', vim.lsp.buf.rename, opts)
    map('n', '<leader>lq', vim.diagnostic.open_float, opts)
  end,
})
