" source all configs
for f in split(glob('~/.vim/configs/*.vim'), '\n')
  exe 'so' f
endfor

" general settings
set tabstop=2
set shiftwidth=0
set expandtab
set autoindent
set backspace=indent,eol,start
syntax on
set ruler
