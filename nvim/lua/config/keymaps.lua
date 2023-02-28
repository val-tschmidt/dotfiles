-- -----------------------------------------
-- Key Maps
-- -----------------------------------------

vim.g.mapleader = ' '

vim.keymap.set(
  'n',
  '<Leader>ve',
  '<cmd>edit ~/.config/nvim/init.lua<cr>',
  { desc = 'Edit init.lua file' }
)

vim.keymap.set(
  'n',
  '<Leader>vr',
  '<cmd>source ~/.config/nvim/init.lua<cr>',
  { desc = 'Reload init.lua file' }
)

vim.keymap.set(
  '',
  'gf',
  '<cmd>edit <cfile><cr>',
  { desc = 'Allow gf to open non-existent files' }
)

vim.keymap.set(
  'v',
  '<',
  '<gv',
  { desc = 'Reselect visual selection after undent', noremap = true }
)

vim.keymap.set(
  'v',
  '>',
  '>gv',
  { desc = 'Reselect visual selection after indent', noremap = true }
)

vim.keymap.set(
  'n',
  'Y',
  'y$',
  { desc = 'Make Y behave like other capitals', noremap = true }
)

vim.keymap.set(
  'n',
  '<Leader>x',
  ':!xdg-open %<cr><cr>',
  { desc = 'Open the current file in the default program' }
)

vim.keymap.set(
  'i',
  'jj',
  '<esc>',
  { desc = 'Quickly escape to normal mode while in insert mode' }
)

vim.keymap.set(
  'i',
  ';;',
  '<esc>A;<esc>',
  { desc = 'Quickly insert end-of-line semicolon while in insert mode' }
)

vim.keymap.set(
  'i',
  ',,',
  '<esc>A,<esc>',
  { desc = 'Quickly insert end-of-line comma while in insert mode' }
)

vim.keymap.set(
  'n',
  '<Leader><Leader>',
  '<c-^>',
  { desc = 'Switch between the last two files quickly' }
)

vim.keymap.set(
  'n',
  '<cr>',
  ':nohlsearch<cr>',
  { desc = 'Press enter to clear search results' }
)

vim.keymap.set(
  'n',
  '<Leader>l',
  ':set list!<cr>',
  { desc = 'Quickly toggle whitespace characters' }
)

-- Encourage using hljk keys for movement

vim.keymap.set('n', '<left>', ":echo 'Use h key instead'")
vim.keymap.set('n', '<right>', ":echo 'Use l key instead'")
vim.keymap.set('n', '<up>', ":echo 'Use k key instead'")
vim.keymap.set('n', '<down>', ":echo 'Use j key instead'")

-- Maintain the cursor position when yanking a visual selection


vim.keymap.set('v', 'y', 'myy`y', { noremap = true })
vim.keymap.set('v', 'Y', 'myY`y', { noremap = true })

-- Quicker window movement

vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
