local options = {
  autoindent = true,
  backup = false,
  clipboard = 'unnamedplus',
  cmdheight = 0,
  cursorline = true,
  expandtab = true,
  fileencoding = 'utf-8',
  ignorecase = true,
  mouse = 'a',
  number = true,
  relativenumber = true,
  showmode = false,
  smartindent = true,
  splitright = true,
  splitbelow = true,
  shiftwidth = 2,
  termguicolors = true,
  title = true,
  wrap = true,
}

for key, value in pairs(options) do
  vim.opt[key] = value
end

vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '',
      [vim.diagnostic.severity.WARN] = '',
      [vim.diagnostic.severity.HINT] = '󰍉',
      [vim.diagnostic.severity.INFO] = '',
    },
  },
})
