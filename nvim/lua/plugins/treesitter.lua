-- The goal of nvim-treesitter is both to provide a simple and easy way to
-- use the interface for tree-sitter in Neovim and to provide some basic
-- functionality such as highlighting based on it.
-- See https://github.com/nvim-treesitter/nvim-treesitter for more details.

local Plug = vim.fn['plug#']

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
