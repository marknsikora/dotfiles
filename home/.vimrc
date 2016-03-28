set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Good defaults
Plugin 'tpope/vim-sensible'

" Up to date language pack
Plugin 'sheerun/vim-polyglot'

" Tim Pope goodness
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-endwise.git'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Transition between single and multi line statements
Plugin 'AndrewRadev/splitjoin.vim.git'

" Quick movement using hints
Plugin 'Lokaltog/vim-easymotion.git'

" Movements for function arguments
Plugin 'PeterRincker/vim-argumentative.git'

" Alignment plugin
Plugin 'godlygeek/tabular.git'

" Fuzzy file search
Plugin 'kien/ctrlp.vim'

" Commenting
Plugin 'tomtom/tcomment_vim'

" Clojure
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-sexp'

" Powerline
Plugin 'vim-airline/vim-airline.git'
Plugin 'vim-airline/vim-airline-themes.git'
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
