local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map('', '<Space>', '<Nop>', opts)

map('n', '<C-Up>', ':resize +2<CR>', opts)
map('n', '<C-Down>', ':resize -2<CR>', opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)

map('', '<Up>', '', opts)
map('', '<Down>', '', opts)
map('', '<Left>', '', opts)
map('', '<Right>', '', opts)

map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

map('v', '<A-j>', ':m .+1<CR>==', opts)
map('v', '<A-k>', ':m .-2<CR>==', opts)
map('v', 'p', '"_dP', opts)

map('x', 'J', ":move '>+1<CR>gv-gv", opts)
map('x', 'K', ":move '<-2<CR>gv-gv", opts)
map('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
map('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)
