" Options
lua << EOF
require("nnn").setup({
explorer = {
	width = 40
	}
})
EOF

autocmd VimEnter * NnnExplorer
if @% != "" && @% != "." && @% != "./"
	autocmd VimEnter * execute  "normal \<C-w>\<right>" | stopinsert
endif
" Functions

" Shortcuts
nnoremap <C-n> :NnnExplorer<CR>

