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
