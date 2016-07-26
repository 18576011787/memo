"Use vundle to manage plugin, required turn file type off and nocompatible
filetype off
set nocompatible
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
"Let vundle manage vundle,required
Bundle 'gmarik/vundle'
"My bundles here:
Bundle 'altercation/vim-colors-solarized'
Bundle 'matrix.vim--Yang'
Bundle 'taglist.vim'
Bundle 'The-NERD-tree'
Bundle 'a.vim'
"Brief help of vundle
	":BundleList
	":BundleInstall
	":BundleSearch
	":BundleClean
	":help vundle
"End brief help

"Show line number, command, status line and so on
set history=1000
set ruler
set number
set showcmd
set showmode
set laststatus=2
set cmdheight=2
set scrolloff=3

"Fill space between windows
set fillchars=stl:\ ,stlnc:\ ,vert:\

"Turn off annoying error sound
set noerrorbells
set novisualbell
set t_vb=

"Turn off splash screen
set shortmess=atI

"syntax and theme
syntax on
colorscheme desert
set background=dark
set cursorline
set cursorcolumn

"Configure backspace to be able to across two lines
set backspace=2
set whichwrap+=<,>,h,l

"Tab and indent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set cindent

"Files,backups and encoding
set nobackup
set noswapfile
set autoread
set autowrite
set autochdir
set fileencodings=utf-8
set fileformats=unix,dos,mac
filetype plugin on
filetype indent on

"Text search and replace
set showmatch
set matchtime=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set magic
set lazyredraw
set nowrapscan
set iskeyword+=_,$,@,%,#,~,.

"Gvim config
if has("gui_running")
	colorscheme solarized
endif
set guifont=DejaVu\ Sans\ Mono\ 15
set guioptions=aegic

"Use taglist to view the linux kernel source
"Must set tags file path
set tags=/usr/src/linux-source-3.13.0/tags

set t_Co=256

"在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）
"autocmd VimEnter * NERDTree
"按下 F10 调出/隐藏 NERDTree
map <F10> :NERDTreeToggle<CR> 
"将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
let NERDTreeWinPos="right"
"当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1
