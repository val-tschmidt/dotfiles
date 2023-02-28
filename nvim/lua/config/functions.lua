-- -----------------------------------------
-- Functions
-- -----------------------------------------

vim.cmd([[
  function! StripTrailingWhitespaces()
      " Preparation: save last search, and cursor position.
      let _s=@/
      let l = line(".")
      let c = col(".")
      " Do the business:
      %s/\s\+$//e             " Remove end of line whitespace
      %s/\($\n\s*\)\+\%$//e   " Remove end of file whitespace
      " Clean up: restore previous search history, and cursor position
      let @/=_s
      call cursor(l, c)
  endfunction
]])

local trailingSpaces = vim.api.nvim_create_augroup('TrailingSpaces', { clear = true })
vim.api.nvim_create_autocmd(
  {'BufWritePre'},
  {
    pattern = {'*'},
    group = trailingSpaces,
    command = ':call StripTrailingWhitespaces()'
  }
)

local whitespaceSafeFiles = vim.api.nvim_create_augroup('WhitespaceSafeFiles', { clear = true })
vim.api.nvim_create_autocmd(
  {'BufNewFile', 'BufRead'},
  {
    pattern = {'*.diff'},
    group = whitespaceSafeFiles,
    command = 'autocmd! TrailingSpaces'
  }
)
