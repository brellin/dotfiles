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
call plug#end()

"Settings
set tabstop=2
set shiftwidth=0
set expandtab
set autoindent
set backspace=indent,eol,start
syntax on

"Mode Settings
let &t_SI = "\<Esc>[5 q" "SI = INSERT mode
let &t_SR = "\<Esc>[4 q" "SR = REPLACE mode
let &t_EI = "\<Esc>[2 q" "EI = INSERT mode

"Cursor settings:
"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
