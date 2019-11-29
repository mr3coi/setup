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

highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

"hi DiffAdd      gui=none    guifg=NONE          guibg=#bada9f
"hi DiffChange   gui=none    guifg=NONE          guibg=#e5d5ac
"hi DiffDelete   gui=bold    guifg=#ff8080       guibg=#ffb0b0
"hi DiffText     gui=none    guifg=NONE          guibg=#8cbee2
