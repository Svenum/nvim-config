source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/color/papercolor.vim
for f in split(glob('$HOME/.config/nvim/config/*.vim'), '\n')
    exe 'source' f
endfor
