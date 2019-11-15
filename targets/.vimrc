"columns cout for indentation
set shiftwidth=2

"columns count for the tab
set tabstop=2

"soft tabs
set expandtab

"respect previous line indentation
set autoindent

"allow backspacing over line breaks
set eol

"highlight every search match
set hlsearch

"enable visual wrapping
set wrap

"retab on save
autocmd BufWritePre * :retab

syntax on

"specific rules for HTML files
autocmd FileType html setlocal shiftwidth=2 tabstop=2

"specific rules for Javascript files
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
autocmd FileType json setlocal shiftwidth=4 tabstop=4

"autoremove trailing whitespaces on save
fun! StripTrailingWhitespace()
  "Don't strip on these filetypes
  if &ft =~ 'ruby'
    return
  endif

  %s/\s\+$//e
endfun
autocmd BufWritePre * call StripTrailingWhitespace()

"yank to system clipboard
clipboard=unnamed
