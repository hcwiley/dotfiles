""" Vundle """""""""""""""""""""""""""""""""""""""""""""
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

Bundle 'http://github.com/tpope/vim-pathogen'

" my Bundles here ---------------------
"Bundle 'altercation/vim-colors-solarized'
Bundle 'flazz/vim-colorschemes'
Bundle 'digitaltoad/vim-jade'
Bundle 'ervandew/supertab'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'fs111/pydoc.vim'
Bundle 'godlygeek/tabular'
Bundle 'guileen/vim-node'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mileszs/ack.vim'
Bundle 'mitechie/pyflakes-pathogen'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'wavded/vim-stylus'
" end my Bundles ----------------------

" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'git://github.com/groenewege/vim-less.git'
" ...

filetype plugin indent on " required!
""" end Vundle """""""""""""""""""""""""

call pathogen#runtime_append_all_bundles()

" basics
set encoding=utf-8
set laststatus=2   " always show status bar
"set t_Co=256       " paint with all the colors of the wind
set hidden         " really, i'm coming right back
let mapleader=","  " i hate typing \
set number
syntax enable
set background=dark
colorscheme solarized "darkblue
let g:Powerline_symbols = 'fancy'
"magical things can happen with the mouse in MacVim
set mouse=a

" leader mappings
map <leader>n :NERDTreeToggle<CR>
map <leader>vs :source $MYVIMRC<CR>
map <leader>ve :e $MYVIMRC<CR>
map <leader>x :set paste<CR>"+p<CR>:set nopaste<CR>
map <leader>ack <Esc>:Ack!
map <leader>a :Tabularize /
map <leader>ae :Tabularize /=<CR>
map <leader>ac :Tabularize /:<CR>
map <leader>w :MiniBufExplorer<CR>
map <leader>r <c-r>
map <leader>c :CommandT<CR>
" nav mappings
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" dictionaries
au FileType javascript setlocal dictionary+=$HOME/.vim/bundle/vim-node/dict/node.dict
au FileType coffee setlocal dictionary+=$HOME/.vim/bundle/vim-node/dict/node.dict

" not sure about this
let g:SuperTabDefaultCompletionType = "context"

" case insensitive (unless uppercase is typed)
set ignorecase
set smartcase

" let's ignore some files
:set wildignore +=.git,node_modules/**,docs/**,**.png,**.jpg,**vendor/**
let g:CommandTMaxHeight = 10
let g:CommandTMinHeight = 10

" default tabs
set ts=2 sts=2 sw=2
set expandtab
set smarttab
au FileType make setlocal noexpandtab

" 4 tab width for python 
au FileType python setlocal ts=4 sts=4 sw=4

" don't be dumb with <Nul>
imap <Nul> <Space>
map  <Nul> <Nop>
vmap <Nul> <Nop>
cmap <Nul> <Nop>
nmap <Nul> <Nop>

" for milesza/ack.vim
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
       \| exe "normal! g'\"" | endif
endif
if has("gui_running")
  set guioptions-=T
endif
