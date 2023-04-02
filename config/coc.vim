" Options
set nobackup
set nowritebackup
set updatetime=300
set signcolumn=yes
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
				\'coc-html',
        \'@yaegassy/coc-ansible'
	      \]

" Functions
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Shortcuts
inoremap <silent><expr> <A-CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
