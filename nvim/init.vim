" __/\\\\\\\\\\\\\\\______/\\\\\\\\\\\___
"  _\///////\\\/////_____/\\\/////////\\\_
"   _______\/\\\_________\//\\\______\///__
"    _______\/\\\__________\////\\\_________
"     _______\/\\\_____________\////\\\______
"      _______\/\\\________________\////\\\___
"       _______\/\\\_________/\\\______\//\\\__
"        _______\/\\\________\///\\\\\\\\\\\/___
"         _______\///___________\///////////_____
"
"
"         Personal vim configuration of
"    Terry Schmidt <terry.m.schmidt@gmail.com>

source ~/.config/nvim/configuration/general.vim
source ~/.config/nvim/configuration/key_maps.vim
source ~/.config/nvim/configuration/plugins.vim
source ~/.config/nvim/configuration/functions.vim

"------------------------------------------------
" Misc
"------------------------------------------------

augroup TrailingSpaces
  autocmd!
  autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
augroup END

augroup SqlFiles
  autocmd!
  autocmd BufNewFile,BufRead *.diff autocmd! TrailingSpaces
augroup END
