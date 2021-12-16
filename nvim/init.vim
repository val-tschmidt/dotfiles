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


"------------------------------------------------
" General Settings
"------------------------------------------------

set autowrite
set backspace=2
set colorcolumn=+1,+5
set complete=.,w,u,b,t,i
set expandtab
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:▶\ ,trail:·,nbsp:·,eol:¬
set mouse=a
set nojoinspaces
set nowrap
set number
set relativenumber
set ruler
set scrolloff=5
set shiftround
set shiftwidth=2
set showcmd
set showmatch
set sidescrolloff=5
set smartcase
set softtabstop=2
set spell
set splitbelow
set splitright
set tabstop=2
set textwidth=80
set title
set wildmode=longest:full,full

" Maybe?
" set signcolumn=yes:2
" set termguicolors
" set undofile

"------------------------------------------------
" Key Maps
"------------------------------------------------

let mapleader = "\<space>"

nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>

" Allow gf to open non-existent files
map gf :edit <cfile><cr>

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Maintain the cursor position when yanking a visual selection
" http://ddrscott.github.io/blog/2016/yank-without-jank/
vnoremap y myy`y
vnoremap Y myY`y

" When text is wrapped, move by terminal rows, not lines, unless a count is provided
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Make Y behave like the other capitals
nnoremap Y y$

" Open the current file in the default program
nmap <leader>x :!xdg-open %<cr><cr>

" Quicky escape to normal mode
imap jj <esc>

" Easy insertion of a trailing ; or , from insert mode
imap ;; <Esc>A;<Esc>
imap ,, <Esc>A,<Esc>

" Switch between the last two files quickly
nmap <leader><leader> <c-^>

" Encourage using hlkj keys for movement
nmap <left> :echo 'Use h'
nmap <right> :echo 'Use l'
nmap <up> :echo 'Use k'
nmap <down> :echo 'Use j'

" Press enter to clear search results
nmap <CR> :nohlsearch<CR>

" Quickly toggle whitespace characters
nmap <Leader>l :set list!<CR>

" Quicker window movement
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

"------------------------------------------------
" Plugins
"------------------------------------------------

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

" source plugin files below
source ~/.config/nvim/plugins/ctrlp.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/themes/github.vim
source ~/.config/nvim/plugins/vim/abolish.vim
source ~/.config/nvim/plugins/vim/coffeescript.vim
source ~/.config/nvim/plugins/vim/rails.vim
source ~/.config/nvim/plugins/vim/slim.vim
source ~/.config/nvim/plugins/vim/surround.vim
source ~/.config/nvim/plugins/vim/vue.vim

call plug#end()
doautocmd User PlugLoaded

"------------------------------------------------
" Functions
"------------------------------------------------

function! <SID>StripTrailingWhitespaces()
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
