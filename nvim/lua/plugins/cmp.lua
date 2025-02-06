return {
  'saghen/blink.cmp',
  version = '*',
  opts = {
    keymap = { preset = 'enter' },
    appearance = {
      nerd_font_variant = 'mono'
    },
    sources = {
      default = { 'lsp', 'path' },
    },
  },
  opts_extend = { 'sources.default' }
}

