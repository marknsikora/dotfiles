set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Good defaults
Plugin 'tpope/vim-sensible'

Plugin 'AndrewRadev/splitjoin.vim.git'
Plugin 'Lokaltog/vim-easymotion.git'
Plugin 'PeterRincker/vim-argumentative.git'
Plugin 'godlygeek/tabular.git'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic.git'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-endwise.git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'

" Clojure
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-sexp'

" Powerline
Plugin 'bling/vim-airline.git'
let g:airline_theme='powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''

" Color schemes
Plugin 'chriskempson/base16-vim'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()            " required
filetype plugin indent on    " required

" GUI Settings
if has('gui_running')
    set background=dark
    colorscheme solarized
    set guifont=DejaVu\ Sans\ Mono\ 12
endif

" Numbered lines.
set number

" Powerbar settings
set noshowmode

" Tab settings.
set expandtab
set shiftwidth=4

" Make trailing whitespace annoyingly highlighted.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
if v:version >= 702
    autocmd BufWinLeave * call clearmatches()
endif

" Search settings
set ignorecase
set smartcase
set hlsearch

" Enable clipboard support
if exists('+clipboard')
    if v:version >= 704 || (v:version == 703 && has('patch74'))
        set clipboard=unnamedplus
    else
        set clipboard=unnamed
    endif
endif

" Per-directory .vimrc files
set exrc
set secure
