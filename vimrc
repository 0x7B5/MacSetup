set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ycm-core/YouCompleteMe.git'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required





"set autoindent"
"set smartindent"
set number
set textwidth=80

set tabstop=4
set shiftwidth=4
set expandtab

set showmatch
set hlsearch
set incsearch
set spell spelllang=en_us
set nobackup
set noswapfile


syntax on





