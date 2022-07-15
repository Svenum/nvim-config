" Navigation 
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-Down> :tabclose<CR> 

nnoremap <silent> <C-S-Right> :vert res +5 <CR>
nnoremap <silent> <C-S-Left> :vert res -5 <CR>
nnoremap <silent> <C-S-Up> :res +5 <CR>
nnoremap <silent> <C-S-Down> :res -5 <CR>

" Cursor
nmap <expr> <silent> <C-d> <SID>select_current_word()
function! s:select_current_word()
  if !get(b:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc

" NNN 
nnoremap <C-n> :NnnExplorer<CR>

" Close
nnoremap <C-c> :quitall<CR>

" Terminal
nnoremap <C-Space> :ToggleTerm<CR><CR>
tnoremap <C-Space> <Esc>:ToggleTerm<CR>
tnoremap <silent><Esc> <Cmd> "ToggleTerm"<CR>

