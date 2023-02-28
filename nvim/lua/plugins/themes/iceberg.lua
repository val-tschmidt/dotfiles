local Plug = vim.fn['plug#']

Plug 'cocopon/iceberg.vim'

local icebergTheme = vim.api.nvim_create_augroup('IcebergTheme', { clear = true })
vim.api.nvim_create_autocmd(
  {'User'},
  {
    command = 'colorscheme iceberg',
    group = icebergTheme,
    nested = true,
    pattern = 'PlugLoaded'
  }
)
