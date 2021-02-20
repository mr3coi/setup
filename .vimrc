" =============================================================================
" Vundle Configuration

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Plugin 'ycm-core/YouCompleteMe'
" Plugin 'vim-syntastic/syntastic'
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'editorconfig/editorconfig-vim'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
let g:syntastic_check_on_open = 0
let g:ycm_confirm_extra_conf = 0
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" SyntasticError / SyntasticWarning respectively
hi SpellBad cterm=bold      ctermfg=0 ctermbg=1 guifg=Black guibg=Red
hi SpellCap cterm=underline ctermfg=3 ctermbg=0 guifg=Black guibg=Yellow

" =============================================================================

set autoindent
set cindent
set smartindent
set smartcase
set smarttab
set relativenumber
set number
set hlsearch
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
set autoread
set showcmd
set showmatch
" set columns=100
set mousehide
set mouse=nicr
set foldmethod=syntax
set guifont=Consolas:h12:cANSI:qDRAFT
set completeopt-=preview	" Diable scratch space
set et

syntax on
" set nocompatible		" Set above at Vundle setting
" filetype plugin on	" Set above at Vundle setting
highlight SpecialKey ctermfg=240

:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" =============================================================================
" File extensions settings

augroup filedetect
	au BufRead,BufNewFile *.cuh set filetype=c
augroup end

let g:python_recommended_style = 0
"let g:tex_flavor='latex'
"let g:Tex_DefaultTargetFormat='pdf'
"let g:Tex_MultipleCompileFormats='pdf'

autocmd FileType python setlocal ts=4 sw=4 noet

" =============================================================================
" Vimdiff coloring

highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

"hi DiffAdd      gui=none    guifg=NONE          guibg=#bada9f
"hi DiffChange   gui=none    guifg=NONE          guibg=#e5d5ac
"hi DiffDelete   gui=bold    guifg=#ff8080       guibg=#ffb0b0
"hi DiffText     gui=none    guifg=NONE          guibg=#8cbee2

" =============================================================================
" cscope settings

" Set below to 1 to use cscope
let use_cscope = 0

if use_cscope && has('cscope')
	source ~/.vim/plugin/cscope_maps.vim

	set cscopetag cscopeverbose

	if has('quickfix')
		set cscopequickfix=s-,c-,d-,i-,t-,e-
	endif

	cnoreabbrev csa cs add
	cnoreabbrev csf cs find
	cnoreabbrev csk cs kill
	cnoreabbrev csr cs reset
	cnoreabbrev css cs show
	cnoreabbrev csh cs help

	command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif
" =============================================================================
