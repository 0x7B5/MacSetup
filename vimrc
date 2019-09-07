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
Plugin 'alvan/vim-closetag'
Plugin 'scrooloose/nerdtree'
Plugin 'dense-analysis/ale'
Plugin 'vim-syntastic/syntastic.git'
Plugin 'keith/swift.vim.git'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set ruler
set rulerformat=%l,%v
set number
set textwidth=80

set tabstop=4
set shiftwidth=4
set expandtab
filetype indent on

let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" -----------------------------------------------------------------------------------------
" autocomplete
let g:syntastic_swift_swiftlint_use_defaults = 1
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
set backspace=indent,eol,start

" -----------------------------------------------------------------------------------------
set showmatch
set hlsearch
set incsearch
set spell spelllang=en_us
set nobackup
set noswapfile



syntax on
