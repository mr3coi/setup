set ai
set ci
set relativenumber
set number
set hlsearch
set nocompatible
set noignorecase
set wildmenu
set confirm
set wrap
set ruler
set sw=4
set ts=4
set laststatus=2
set cmdheight=2
set encoding=utf-8
set fileencoding=utf-8
set nomodeline
set backspace=indent,eol,start
set list
set listchars=tab:\|\ 

syntax on
highlight SpecialKey ctermfg=240

augroup filedetect
	au BufRead,BufNewFile *.cuh set filetype=c
augroup end
