local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap('', '<Space>', '<Nop>', opts)

keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

keymap('n', '<C-Up>', ':resize +2<CR>', opts)
keymap('n', '<C-Down>', ':resize -2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

keymap('', '<Up>', '', opts)
keymap('', '<Down>', '', opts)
keymap('', '<Left>', '', opts)
keymap('', '<Right>', '', opts)

keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

keymap('v', '<A-j>', ':m .+1<CR>==', opts)
keymap('v', '<A-k>', ':m .-2<CR>==', opts)
keymap('v', 'p', '"_dP', opts)

keymap('x', 'J', ":move '>+1<CR>gv-gv", opts)
keymap('x', 'K', ":move '<-2<CR>gv-gv", opts)
keymap('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
keymap('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)

keymap('n', '<leader>lc', vim.lsp.buf.code_action, opts)
keymap('n', '<leader>ld', vim.lsp.buf.definition, opts)
keymap('n', '<leader>lf', vim.lsp.buf.format, opts)
keymap('n', '<leader>lh', vim.lsp.buf.hover, opts)
keymap('n', '<leader>lr', vim.lsp.buf.rename, opts)
keymap('n', '<leader>lq', vim.diagnostic.open_float, opts)


keymap('n', '<A-h>', '<cmd>BufferPrevious<cr>', opts)
keymap('n', '<A-j>', '<cmd>BufferMovePrevious<cr>', opts)
keymap('n', '<A-k>', '<cmd>BufferMoveNext<cr>', opts)
keymap('n', '<A-l>', '<cmd>BufferNext<cr>', opts)
keymap('n', '<A-q>', '<cmd>BufferClose<cr>', opts)