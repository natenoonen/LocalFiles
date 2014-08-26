set nocompatible
filetype off
if has('win32') || has('win64')
      set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
      " set the runtime path to include Vundle and initialize
      set rtp+=~/vimfiles/bundle/Vundle.vim/
      let path='~/vimfiles/bundle'
      call vundle#begin(path)
else
  set backup
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
endif


" Add vundle plugins here

" If there is a slash in the bundle-name
" it automatically installs from GitHub.
Bundle 'gmarik/vundle'

" very nice file browser
Bundle 'scrooloose/nerdtree'

" some markdown support
Bundle 'plasticboy/vim-markdown'

" full path fuzzy search
Bundle 'kien/ctrlp.vim'

" some yaml support
Bundle 'avakhov/vim-yaml.git'

" git tools
Bundle 'tpope/vim-fugitive'

" zen coding (for HTML)
Bundle 'rstacruz/sparkup', {'rtp': 'vim'}

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
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim'}

" creates a nice way to traverse buffers in a 'tab like' way.
" Bundle 'fholgado/minibufexpl.vim'

" key combos for 'pairs' of things. Mostly previous/next type stuff
Bundle 'tpope/vim-unimpaired'
" From dan wells TODO: Comment
Bundle 'wojtekmach/vim-rename'
Bundle 'kchmck/vim-coffee-script'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-sensible'
Bundle 'mfukar/robotframework-vim'
Bundle 'matthias-guenther/tocdown'
Bundle 'hsitz/VimOrganizer'
Bundle 'davidoc/taskpaper.vim'


call vundle#end() " required


filetype plugin indent on
let mapleader = ","
set encoding=utf8
set background=dark
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
set background=dark
nnoremap ; :
set showmatch
set swapfile
set relativenumber

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

set backupdir=~/tmp
nnoremap <C-n> :call NumberToggle()

" NERDTree
noremap <F2> :NERDTreeToggle ~/projects
nmap <silent> <A-Up> :wincmd k
nmap <silent> <A-Down> :wincmd j
nmap <silent> <A-Left> :wincmd h
nmap <silent> <A-Right> :wincmd l


" Ctrl-P
noremap <leader>b :CtrlPBuffer<CR>


" Window Movement
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" TOCDown
nnoremap <F3> :TocdownToggle<CR>

map Y y$

" Nate special curl

noremap <leader>c :! curl -K %<CR>

try
  set swapfile
  set dir=~/tmp
catch
endtry

try
  color Tomorrow-Night-Bright
catch
  :colorscheme slate 
endtry
