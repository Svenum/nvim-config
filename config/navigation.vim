" Shortcuts
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-Down> :tabclose<CR> 
tnoremap <silent> <C-Right> <C-\><C-n> :tabnext<CR>
tnoremap <silent> <C-Left> <C-\><C-n> :tabprevious<CR>
tnoremap <silent> <C-Down> <C-\><C-n> :tabclose<CR> 

nnoremap <silent> <C-f> <Esc> /

nnoremap <silent> <C-S-Right> :vert res +5 <CR>
nnoremap <silent> <C-S-Left> :vert res -5 <CR>
nnoremap <silent> <C-S-Up> :res +5 <CR>
nnoremap <silent> <C-S-Down> :res -5 <CR>
tnoremap <silent> <C-S-Right> <C-\><C-n> :vert res +5 <CR>
tnoremap <silent> <C-S-Left> <C-\><C-n> :vert res -5 <CR>
tnoremap <silent> <C-S-Up> <C-\><C-n> :res +5 <CR>
tnoremap <silent> <C-S-Down> <C-\><C-n> :res -5 <CR>

nnoremap <C-c> :quitall<CR>

nnoremap <silent> <A-Down> :split<CR>
nnoremap <silent> <A-Right> :vsplit<CR>

" Functions
if has('nvim')
    augroup terminal_setup | au!
        autocmd TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease>i
    augroup end
endif

autocmd BufWinEnter,WinEnter term://* startinsert
