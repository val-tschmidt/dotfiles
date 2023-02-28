-- The NERDTree is a file system explorer for the Vim editor. Using this
-- plugin, users can visually browse complex directory hierarchies, quickly
-- open files for reading or editing, and perform basic file system operations.

local Plug = vim.fn['plug#']

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

vim.g.NERDTreeShowHidden = true
vim.g.NERDTreeMinimalUI = true
vim.g.NERDTreeDirArrowExpandable = '▹'
vim.g.NERDTreeDirArrowCollapsible = '▿'
vim.g.plug_window = 'noautocmd vertical topleft new'
vim.g.WebDevIconsUnicodeDecorateFolderNodes = true
vim.g.DevIconsEnableFoldersOpenClose = true
vim.g.DevIconsEnableFolderExtensionPatternMatching = true

vim.keymap.set(
  'n',
  '<Leader>n',
  'g:NERDTree.IsOpen() ? ":NERDTreeClose<cr>" : @% == "" ? ":NERDTree<cr>" : ":NERDTreeFind<cr>"',
  { expr = true, noremap = true }
)

vim.keymap.set(
  'n',
  '<Leader>N',
  ':NERDTreeFind<cr>'
)

vim.api.nvim_create_autocmd(
  'BufEnter',
  {
    command = 'if bufname("#") =~# "^NERD_tree_" && winnr("$") > 1 | b# | endif',
    pattern = '*'
  }
)
