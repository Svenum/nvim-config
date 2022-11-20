" Options
lua << EOF
    local builtin = require("nnn").builtin
    require("nnn").setup({
        explorer = {
	            width = 40
	        },
        set_default_mappings = 0,
        mappings = {
		        { "<S-s>", builtin.open_in_split },
		        { "<S-v>", builtin.open_in_vsplit },
            },
        auto_close = true,
        auto_open = {
                 setup = "picker",
                 tabpage = "pcker",
                 empty = true
            }
        
    })
EOF

"autocmd VimEnter * NnnExplorer
if @% != "" && @% != "." && @% != "./"
	autocmd VimEnter * execute  "normal \<C-w>\<right>" | stopinsert
endif

autocmd BufWinLeave,WinLeave term://* startinsert
" Functions
" Shortcuts
nnoremap <C-n> :NnnPicker<CR>
inoremap <C-n> <Esc> :NnnPicker<CR>
tnoremap <C-n> <C-\><C-n> :NnnPicker<CR>

