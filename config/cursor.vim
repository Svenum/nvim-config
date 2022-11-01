" Options
set tabstop=4
set shiftwidth=4
set expandtab

" Shortcuts
nmap <expr> <silent> <C-d> <SID>select_current_word()

" Functions
function! s:select_current_word()
  if !get(b:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc

