Plug 'projekt0n/github-nvim-theme'

augroup GithubTheme
  autocmd!
  autocmd User PlugLoaded ++nested colorscheme github_dimmed
augroup end
