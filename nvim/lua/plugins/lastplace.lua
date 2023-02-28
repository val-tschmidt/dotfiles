-- Intelligently reopen files at your last edit position. By default git, svn,
-- and mercurial commit messages are ignored because you probably want to type
-- a new message and not re-edit the previous one.

local Plug = vim.fn['plug#']

Plug 'farmergreg/vim-lastplace'
