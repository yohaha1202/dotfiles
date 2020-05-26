set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'tmhedberg/matchit'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-commentary'
Plugin 'ntpeters/vim-better-whitespace'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Color configuration
set bg=dark
set t_Co=256
" color evening  " Same as :colorscheme evening
" hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
" hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE

syntax on
colorscheme cobalt

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" general settings
set number
set relativenumber
set cursorline
set lazyredraw
set nobomb
set noerrorbells
set nobackup nowritebackup
set viminfo="NONE"
set visualbell
set wildmenu
set updatetime=300
set wildmenu

" status bar settings
set ruler
set showcmd
set showmode
set laststatus=2
set cmdheight=2

" search settings
set hlsearch
set incsearch
set ignorecase
set smartcase
set ignorecase

" encoding settings
set encoding=utf-8
set fileencodings=utf-8,default,big5

" indentation settings
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set smarttab
set autoindent
set copyindent

autocmd BufNewFile,BufRead *.phtml set filetype=php

augroup xmlfiletype
    autocmd!
    autocmd FileType xml set noexpandtab
augroup END

" show hidden files when using plugins
let NERDTreeShowHidden=1
let NERDTreeWinSize=25
map <C-n> :NERDTreeToggle<CR>

" let the emmet trigger key to be ctrl + z
nnoremap <c-z> <nop>
inoremap <c-z> <nop>
vnoremap <c-z> <nop>
let g:user_emmet_leader_key='<C-Z>'

" commentary
autocmd FileType php setlocal commentstring=//\ %s
autocmd FileType pug setlocal commentstring=//-\ %s"

" Syntastic
let g:syntastic_php_checkers=['php', 'phpcs']
let g:syntastic_php_phpcs_args='--standard=PSR2 -n'
