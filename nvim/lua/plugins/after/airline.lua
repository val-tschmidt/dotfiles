vim.g.airline_theme = 'powerlineish'
vim.g.airline_powerline_fonts = true
vim.g.airline_skip_empty_sections = true
vim.g.airline_section_a = vim.fn['airline#section#create_left']({'mode'})
vim.g.airline_section_b = vim.fn['airline#section#create']({'hunks', 'branch'})
vim.g.airline_section_z = vim.fn['airline#section#create']({'linenr', 'colnr'})
