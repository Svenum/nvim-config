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

"Setupo Terminal
lua << EOF
require('smart-term-esc').setup({
    key = '<Esc>',
    except = {'nvim', 'fzf'}
})
EOF

" Airline
let g:airline_theme='luna'
