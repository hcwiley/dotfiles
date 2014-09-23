set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"Bundle 'tpope/vim-pathogen'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
"Bundle "davidhalter/jedi-vim"
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
"
" basics
set encoding=utf-8
set laststatus=2   " always show status bar
"set t_Co=256       " paint with all the colors of the wind
set hidden         " really, i'm coming right back
let mapleader=","  " i hate typing \
set number
syntax enable
set background=dark
"magical things can happen with the mouse in MacVim
set mouse=a

" leader mappings
map <leader>n :NERDTreeToggle<CR>
map <leader>vs :source $MYVIMRC<CR>
map <leader>ve :e $MYVIMRC<CR>
map <leader>x :set paste<CR>"+p<CR>:set nopaste<CR>
map <leader>ack <Esc>:Ack!
map <leader>w :MiniBufExplorer<CR>
map <leader>r <c-r>
map <leader>c :CommandT<CR>
map <leader>r :set relativenumber<CR>
map <leader>a :set number<CR>
" nav mappings
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" doxygen mappings
map <leader>d :Dox<CR>

" case insensitive (unless uppercase is typed)
set ignorecase
set smartcase

" default tabs
set ts=2 sts=2 sw=2
set expandtab
set smarttab
set autoindent
au FileType make setlocal noexpandtab
au FileType make setlocal ts=4 sts=4 sw=4
au FileType make set filetype=make

" let's ignore some files
:set wildignore +=.git,node_modules/**,docs/**,**.png,**.jpg,**vendor/**,lib/**,libs/**
let g:CommandTMaxHeight = 10
let g:CommandTMinHeight = 10

" 2 tab width for python
au FileType python setlocal ts=2 sts=2 sw=2

augroup filetype
        au!
        au! BufRead,BufNewFile *.module    set filetype=php
        au! BufRead,BufNewFile *..inc      set filetype=php
        au! BufRead,BufNewFile *.install   set filetype=php
        au! BufRead,BufNewFile *.spec      set filetype=ruby
        au! BufRead,BufNewFile *.test      set filetype=ruby
        au! BufRead,BufNewFile *.erb       set filetype=eruby
        au! BufRead,BufNewFile *.hamlc.erb set filetype=haml
        au! BufRead,BufNewFile *.js.erb    set filetype=javascript
        au! BufRead,BufNewFile *.hamlc     set filetype=haml
        au! BufRead,BufNewFile *.jbuilder  set filetype=ruby
        au! BufRead,BufNewFile *.pp        set filetype=puppet
        au! BufRead,BufNewFile *.ttl       set filetype=n3
        au! BufRead,BufNewFile *.coffee    set filetype=coffee
        au! BufRead,BufNewFile *.scss      set filetype=scss
        au! BufRead,BufNewFile *.bgs       set filetype=ruby
        au! BufRead,BufNewFile *.nut       set filetype=cpp
        au! BufRead,BufNewFile *.mlx       set filetype=xml
        au! BufRead,BufNewFile *.mlx.*     set filetype=xml
augroup END
filetype plugin on
