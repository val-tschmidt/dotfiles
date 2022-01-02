let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1

let g:airline_section_a = airline#section#create_left(['mode'])
let g:airline_section_b = airline#section#create(['hunks', 'branch'])
let g:airline_section_z = airline#section#create(['linenr', 'colnr'])

let g:airline#extensions#tabline#enabled = 0

set noshowmode
