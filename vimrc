set nocompatible

" Vundle Setup
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
" <leader>-t to do fuzzy file finding. This is how I usually open files
" leader is \ in my setup
Plugin 'wincent/command-t'

" color schemes and my favorite of the month
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-vividchalk'

" Haven't been using this much lately
" hit tab in insert mode to do magic
Plugin 'SirVer/ultisnips'

" :Ack %regex and it brings up matches in the quickfix
Plugin 'mileszs/ack.vim'

" many defaults, all are straight-up improvements
Plugin 'tpope/vim-sensible'

" tries to match tabs/spaces automatically
Plugin 'tpope/vim-sleuth'

" status bar at bottom of screen
Plugin 'bling/vim-airline'

" I've only been using this for :Gdiff to fix merge conflicts
Plugin 'tpope/vim-fugitive'

" Makes adding or modifying parens/tags/etc around things much easier
Plugin 'tpope/vim-surround'

" makes C-h C-j C-k and C-l play nice with tmux
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-navigator'

" highlights whitespace that doesn't belong, :StripWhitespace
Plugin 'ntpeters/vim-better-whitespace'

" syntax highlighting for Ember's handlebars doesn't work out-of-box
Plugin 'mustache/vim-mustache-handlebars'

call vundle#end()

syntax on
filetype plugin indent on
colorscheme vividchalk
" vividchalk doesn't work well for diffs
au FileType diff colorscheme desert
au FileType git colorscheme desert
au BufWinLeave * colorscheme vividchalk
" prevent too many things from moving around while fuzzy-searching
let g:CommandTMaxHeight=20
let g:CommandTMinHeight=20
" git keeps track of what files are in project - faster than find
let g:CommandTFileScanner='git'

" use textmate's interface for snippets
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

set guioptions-=r
set guioptions-=L

" don't wrap lines
set nowrap

" show line numbers
set number

" make clipboard work inside tmux sessions
set clipboard=unnamed

" make git fugitive display 3 vertical splits
:set diffopt+=vertical

" center cursor on screen
set scrolloff=999

" swapfiles are always annoying and never useful
set noswapfile
