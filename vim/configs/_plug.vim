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
Plug 'wakatime/vim-wakatime'
Plug 'nvie/vim-flake8'
Plug 'TroyFletcher/vim-colors-synthwave'
Plug 'zivyangll/git-blame.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
call plug#end()
