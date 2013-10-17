set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'Lokaltog/vim-easymotion'
Bundle 'flazz/vim-colorschemes'
Bundle 'biskark/vim-ultimate-colorscheme-utility'
Bundle 'simplyzhao/cscope_maps.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdcommenter'
Bundle 'godlygeek/tabular'
Bundle 'sjl/gundo.vim'
Bundle 'takac/vim-hardtime'

" tmux conf highlight
Bundle 'peterhoeg/vim-tmux'

Bundle 'benmills/vimux'

" Not suitable for me, it will hinder C-l
" Bundle 'christoomey/vim-tmux-navigator'

filetype plugin indent on " required

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

set number
set mouse=a
set ttymouse=xterm2
set nowrap
set background=dark
set visualbell
set encoding=utf-8

syntax on

let g:hardtime_default_on = 1
let g:VimuxOrientation = "h"

map <F8> :set hlsearch! <cr>
nnoremap / :set hlsearch <cr> /

map <F10> :set number! <cr>

map <F11> :TagbarToggle <cr>

augroup ft_js
  au!
  au FileType js setl  ts=2 sts=2 sw=2 et
  au FileType jquery setl ts=2 sts=2 sw=2 et
  au FileType javascript setl ts=2 sts=2 sw=2 et
augroup END

