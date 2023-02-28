vim.keymap.set(
  'n',
  '<C-p>',
  '<cmd>Telescope find_files<cr>'
)

vim.keymap.set(
  'n',
  '<Leader>ff',
  '<cmd>Telescope find_files<cr>',
  {
    noremap = true
  }
)

vim.keymap.set(
  'n',
  '<Leader>fg',
  '<cmd>Telescope live_grep<cr>',
  {
    noremap = true
  }
)

vim.keymap.set(
  'n',
  '<Leader>fb',
  '<cmd>Telescope buffers<cr>',
  {
    noremap = true
  }
)

vim.keymap.set(
  'n',
  '<Leader>fh',
  '<cmd>Telescope help_tags<cr>',
  {
    noremap = true
  }
)

local actions = require 'telescope.actions'
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
      }
    }
  }
}
