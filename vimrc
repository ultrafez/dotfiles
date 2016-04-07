" Syntax highlighting
syntax on

" Proper indentation
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Line numbers
set number

" Create :Sudow command for when :w won't save because of insufficient permissions
command! -bar -nargs=0 Sudow   :silent exe "write !sudo tee % >/dev/null"|silent edit!
