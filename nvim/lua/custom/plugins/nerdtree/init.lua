return {
  {
    'preservim/nerdtree',
    config = function ()
      vim.g.NERDTreeShowHidden = true
      vim.g.NERDTreeMinimalUI = true
      vim.g.NERDTreeDirArrowExpandable = '▹'
      vim.g.NERDTreeDirArrowCollapsible = '▿'
      vim.g.plug_window = 'noautocmd vertical topleft new'
      vim.g.WebDevIconsUnicodeDecorateFolderNodes = true
      vim.g.DevIconsEnableFoldersOpenClose = true
      vim.g.DevIconsEnableFolderExtensionPatternMatching = true
    end,
    init = function ()
      vim.api.nvim_create_autocmd(
        'BufEnter',
        {
          command = 'if bufname("#") =~# "^NERD_tree_" && winnr("$") > 1 | b# | endif',
          pattern = '*'
        }
      )

      -- Fix webdevicon display issues
      local webdevicongroup = vim.api.nvim_create_augroup('WebDevIcons', { clear = true })
      vim.api.nvim_create_autocmd(
        { 'BufEnter' },
        {
          pattern = '*',
          group = webdevicongroup,
          command = ':call webdevicons#refresh()'
        }
      )
    end,
    keys = {
      { '<Leader>n', 'g:NERDTree.IsOpen() ? ":NERDTreeClose<cr>" : @% == "" ? ":NERDTree<cr>" : ":NERDTreeFind<cr>"', mode = 'n', expr = true, noremap = true },
      { '<Leader>N', ':NERDTreeFind<CR>' },
    },
  },
  'Xuyuanp/nerdtree-git-plugin',
  'ryanoasis/vim-devicons',
}
