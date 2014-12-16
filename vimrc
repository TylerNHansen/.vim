set nocompatible

" Vundle Setup
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'

Plugin 'flazz/vim-colorschemes'
Plugin 'wincent/command-t'
Plugin 'SirVer/ultisnips'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sleuth'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-vividchalk'
Plugin 'tpope/vim-fugitive'
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'mustache/vim-mustache-handlebars'

call vundle#end()

syntax on
filetype plugin indent on
colorscheme vividchalk
au FileType diff colorscheme desert
au FileType git colorscheme desert
au BufWinLeave * colorscheme vividchalk
let g:CommandTMaxHeight=20
let g:CommandTMinHeight=20
let g:CommandTFileScanner='git'
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
set guioptions-=r
set guioptions-=L
set nowrap
set number

" make clipboard work inside tmux sessions
set clipboard=unnamed

" git fugitive config
:set diffopt+=vertical
