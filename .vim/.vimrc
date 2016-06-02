syntax on
set number

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()




" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.



Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'






" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:


" Vim Airline config
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1

" Colorschemes
Plugin 'flazz/vim-colorschemes'
colorscheme Tomorrow-Night-Eighties
