if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Plugins
call plug#begin('~/.vim/plugged')
Plug 'prettier/vim-prettier'
Plug 'jiangmiao/auto-pairs'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/fzf'
Plug 'wakatime/vim-wakatime'
Plug 'chemzqm/vim-jsx-improve'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'tell-k/vim-autopep8'
Plug 'TroyFletcher/vim-colors-synthwave'
Plug 'APZelos/blamer.nvim'
call plug#end()

" set theme
colorscheme synthwave
