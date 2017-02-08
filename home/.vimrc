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
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rsi'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Quick movement using hints
Plugin 'justinmk/vim-sneak'
let g:sneak#streak = 1

" Alignment plugin
Plugin 'tommcdo/vim-lion'

" Commenting
Plugin 'tpope/vim-commentary'

" Highlight annoying whitespace
Plugin 'ntpeters/vim-better-whitespace'

" Color schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
Plugin 'jnurmine/Zenburn'
Plugin 'tomasr/molokai'

call vundle#end()            " required
filetype plugin indent on    " required

" GUI Settings
silent! colorscheme zenburn
if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono\ 12
    set lines=43 columns=132
endif

" Numbered lines.
set number

" Statusline
set statusline=
set statusline+=\ [%n]         "buffernr
set statusline+=\ %<%f         "File+path
set statusline+=%m%r%w         "Modified? Readonly?
set statusline+=\ %y           "FileType
set statusline+=%=             "Separation point
set statusline+=\ row:%l/%L    "Rownumber/total
set statusline+=\ col:%c       "Colnum
set statusline+=\ %P\          "Top/bot.

" Tab settings.
set expandtab
set shiftwidth=4

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

" Mouse support in term
if exists('+mouse')
    set mouse=a
endif

" Per-directory .vimrc files
set exrc
set secure
