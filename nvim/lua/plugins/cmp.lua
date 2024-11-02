return {
  'saghen/blink.cmp',
  event = { 'LspAttach' },
  version = 'v0.*',
  opts = {
    keymap = {
      show = '<C-space>',
      hide = { '<Esc>' },
      accept = '<CR>',
      select_prev = { '<Up>' },
      select_next = { '<Down>'},
      scroll_documentation_up = '<C-b>',
      scroll_documentation_down = '<C-n>',
    },
    nerd_font_variant = 'normal',
  }
}
