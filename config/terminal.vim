" Options
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

" Shortcuts
nnoremap <C-Space> :ToggleTerm<CR><CR>
tnoremap <C-Space> <C-\><C-n> :ToggleTerm<CR>
