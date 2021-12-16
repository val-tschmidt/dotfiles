" This plugin allows you to "abolish" typos with one simple command. Add Abolish
" entries for anything that you commonly misspell in the group below
Plug 'tpope/tpope-vim-abolish'

augroup AbolishMappings
  autocmd!
  autocmd User PlugLoaded execute ":Abolish teh the"
  autocmd User PlugLoaded execute ":Abolish feild field"
augroup end
