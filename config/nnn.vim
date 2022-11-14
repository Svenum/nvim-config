" Options
lua << EOF
local builtin = require("nnn").builtin
require("nnn").setup({
    explorer = {
	    width = 40
	    },
    mappings = {
            { "<C-t>", builtin.open_in_tab },       -- open file(s) in tab
		    { "<C-s>", builtin.open_in_split },     -- open file(s) in split
		    { "<C-v>", builtin.open_in_vsplit },    -- open file(s) in vertical split
		    { "<C-p>", builtin.open_in_preview },   -- open file in preview split keeping nnn focused
		    { "<C-y>", builtin.copy_to_clipboard }, -- copy file(s) to clipboard
		    { "<C-w>", builtin.cd_to_path },        -- cd to file directory
		    { "<C-e>", builtin.populate_cmdline }  -- populate cmdline (:) with file(s)
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

