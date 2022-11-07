" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " File Explorer
    Plug 'ryanoasis/vim-devicons'
    Plug 'luukvbaal/nnn.nvim'

    " IDE
    Plug 'neoclide/coc.nvim', {'do': 'npm install --frozen-lockfile'} " this is for auto complete, prettier and tslinting
    Plug 'rstacruz/vim-closer'
    Plug 'rstacruz/vim-hyperstyle'
    Plug 'frazrepo/vim-rainbow'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'p00f/nvim-ts-rainbow'


    " Style
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Terminal
    Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.1.0'}
    Plug 'sychen52/smart-term-esc.nvim'

call plug#end()
