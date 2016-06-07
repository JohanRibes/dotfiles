syntax on
set number

set nocompatible              	" be iMproved, required
filetype off                  	" required

set noshowmode 			" Disable mode info below lightline



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ###################################################################
" ###################################################################
" ###################################################################
	Plugin 'VundleVim/Vundle.vim'			" Package manager
	Plugin 'itchyny/lightline.vim'
	Plugin 'flazz/vim-colorschemes'			" Syntax
	Plugin 'yggdroot/indentline'			" Indentation
	Plugin 'ap/vim-css-color'			" CSS color highlight	
" ###################################################################
" ###################################################################
" ###################################################################

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:

" Vim Lightline config
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

colorscheme Tomorrow-Night-Eighties

" 8dots indentation / EOL / tab
let g:indentLine_color_term = 239
let g:indentLine_char = '|'
:set list listchars=tab:\|_,eol:¶,nbsp:~

