
" line numbers: ---------------------------------
set foldcolumn=1
set numberwidth=1
set number
set cursorline "'show' the cursor line
hi FoldColumn       ctermbg=none
hi CursorLine                       cterm=none
hi CursorLineNr     ctermfg=white   cterm=bold
hi LineNr           ctermfg=blue


" whitespace indicators: ------------------------
set list
if has("patch-7.4.710")
    set listchars=tab:▸\ ,trail:·,extends:»,precedes:«
else
    set listchars=tab:\|\ ,trail:-
endif
"hi SpecialKey ctermfg=grey
set list


set fillchars=vert:\ "

" statusline ------------------------------------
set statusline=\ [%f]%h%m%r%y[%{&ff}]
set statusline+=%=%l,%c%V\ %P\ "
set laststatus=2
hi StatusLine   ctermfg=white ctermbg=black cterm=bold,inverse
hi StatusLineNC ctermfg=black ctermbg=grey
