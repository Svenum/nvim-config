" Navigation 
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-Down> :tabclose<CR> 

nnoremap <silent> <C-A-Right> :vert res +5 <CR>
nnoremap <silent> <C-A-Left> :vert res -5 <CR>
nnoremap <silent> <C-A-Up> :res +5 <CR>
nnoremap <silent> <C-A-Down> :res -5 <CR>


" NNN 
nnoremap <C-n> :NnnExplorer<CR>

" Close
nnoremap <C-c> :quitall<CR>

" Terminal
nnoremap <C-Space> :ToggleTerm<CR>
tnoremap <C-Space> <Esc>:ToggleTerm<CR>
tnoremap <silent><Esc> <Cmd> "ToggleTerm"<CR>

