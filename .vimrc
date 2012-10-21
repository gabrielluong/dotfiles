" Turn off Vi compatibility mode.
set nocompatible

" Enable syntax highlighting
syntax enable

" Show line numbers
set number

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Use spaces instead of tabs
set expandtab

" Turn on automatic indentation
set autoindent

" Set the size of an indentation
set sw=4

" Highlight characters that go over 80 columns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
