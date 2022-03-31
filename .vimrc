"set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set cursorline
"set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set showmatch
set lazyredraw
set incsearch
set hlsearch
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
set ruler
" Always display the status line, even if only one window is displayed
set laststatus=2

let mapleader=","       " leader is comma
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

"turn on syntax highlighting
syntax on

" ================ Indentation ======================
filetype indent on
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

set wrap       "Wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=4         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=8
set sidescroll=1

" 
" Other stuff
" brew install moreutils fzf
set rtp+=/usr/local/opt/fzf

