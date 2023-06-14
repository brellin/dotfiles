" general settings
set tabstop=2
set shiftwidth=0
set expandtab
set autoindent
set backspace=indent,eol,start
syntax on
set ruler
set noshowmode
set splitright
set splitbelow
set sessionoptions-=globals
set sessionoptions-=localoptions
set sessionoptions-=options

" source all configs
for f in split(glob('~/.vim/configs/*.vim'), '\n')
  exe 'so' f
endfor

" set theme
colorscheme synthwave

" clear background
hi Normal guibg=NONE ctermbg=NONE
