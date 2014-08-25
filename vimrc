set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)

" Add vundle plugins here

" If there is a slash in the bundle-name
" it automatically installs from GitHub.
Bundle 'gmarik/vundle'

" very nice file browser
Bundle 'scrooloose/nerdtree'

" some markdown support
Bundle 'plasticboy/vim-markdown.git'

" full path fuzzy search
Bundle 'kien/ctrlp.vim'

" some yaml support
Bundle 'avakhov/vim-yaml.git'

" git tools
Bundle 'tpope/vim-fugitive'

" zen coding (for HTML)
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" jump around documents
Bundle 'Lokaltog/vim-easymotion'

" prereq for FuzzyFinder
Bundle 'L9'
Bundle 'FuzzyFinder'

" Edit encrypted files
Bundle 'openssl.vim'

" path searching
Bundle 'git://git.wincent.com/command-t.git'

" formatting for js
Bundle "pangloss/vim-javascript"

" some autocompletion
" Bundle 'Valloric/YouCompleteMe'

" more js syntax options
Bundle 'maksimr/vim-jsbeautify'

" pretty sweet linting/error checking. Works on save
Bundle 'scrooloose/syntastic.git'

" My personal favorite 'everywhere' theme. 
Bundle 'd11wtq/tomorrow-theme-vim'

" creates a nice way to traverse buffers in a 'tab like' way.
" Bundle 'fholgado/minibufexpl.vim'

" key combos for 'pairs' of things. Mostly previous/next type stuff
Bundle 'tpope/vim-unimpaired'
Bundle 'wojtekmach/vim-rename'


call vundle#end() " required

try
    color Tomorrow-Night-Bright
catch
endtry


filetype plugin indent on
let mapleader = ","
set encoding=utf8
set background=light
syntax on
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set t_vb=
set noerrorbells
set visualbell
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=2
set softtabstop=2
set expandtab
set background=dark

map Y y$


:colorscheme slate
