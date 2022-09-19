source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/color/papercolor.vim
source $HOME/.config/nvim/shortcut/shortcuts.vim

" Terminal
"autocmd VimEnter * ToggleTerm

" Coc
let g:coc_global_extensions = ['coc-sh', 'coc-sql', 'coc-tabnine', 'coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']

" Setup NNN
lua << EOF
require("nnn").setup({
explorer = {
	width = 40
	}
})
EOF
autocmd VimEnter * NnnExplorer
if @% != "" && @% == "." && @% == "./"
	autocmd VimEnter * execute  "normal \<C-w>\<right>" | stopinsert
endif

"Setup Terminal
lua << EOF
require('smart-term-esc').setup({
    key = '<Esc>',
    except = {'nvim', 'fzf'}
})

require("toggleterm").setup{
    direction = 'vertical',
    shell = '/bin/zsh',
    size = vim.o.columns * 0.2
}
EOF


" Airline
let g:airline_theme='luna'

" Enable Rainbow-Brackets
let g:rainbow_active=1
