return {
  'saghen/blink.cmp',
  version = '1.*',
  opts = {
    completion = {
      trigger = {
        show_on_keyword = true,
        show_on_trigger_character = true
      },
      list = { selection = { preselect = true, auto_insert = true } },
      menu = {
        auto_show = true,
        draw = {
          treesitter = { 'lsp' },
          columns = {
            { 'kind_icon', 'label', gap = 1 },
            { 'kind' }
          },
        }
      },
      documentation = { auto_show = true, auto_show_delay_ms = 500 },
      ghost_text = { enabled = true }
    },
    keymap = { preset = 'super-tab' },
    appearance = {
      nerd_font_variant = 'mono'
    },
    sources = {
      default = { 'lsp', 'path' },
    },
    fuzzy = { implementation = 'prefer_rust_with_warning' },
    signature = { enabled = true, window = { show_documentation = false } },
    cmdline = {
      keymap = {
        ['<Tab>'] = { 'show', 'accept' },
      },
      completion = {
        menu = {
          auto_show = function()
            return vim.fn.getcmdtype() == ':'
          end,
        },
      }
    }
  },
  opts_extend = { 'sources.default' }
}
