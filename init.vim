source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/color/papercolor.vim
source $HOME/.config/nvim/shortcut/shortcuts.vim

" Terminal
"autocmd VimEnter * ToggleTerm

" Coc
let g:coc_global_extensions = [	'coc-jedi', 
				\'coc-highlight', 
				\'coc-prettier', 
				\'coc-python', 
				\'coc-sh', 
				\'coc-sql', 
				\'coc-tabnine', 
				\'coc-tslint-plugin', 
				\'coc-tsserver', 
				\'coc-css', 
				\'coc-html', 
				\'coc-json', 
				\'coc-git', 
				\'coc-docker', 
				\'coc-markdownlint', 
				\'coc-sh', 
				\'coc-html-css-support',
				\'coc-html'
			     \]

" Setup NNN
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


" Setup Treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "html", "css", "javascript", "typescript", "dockerfile", "gitignore", "json", "markdown", "regex", "sql", "tsx", "vim" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = {},

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = {},
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF
