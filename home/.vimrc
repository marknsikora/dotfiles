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

" Quick movement using hints
Plugin 'justinmk/vim-sneak'
let g:sneak#streak = 1

" Alignment plugin
Plugin 'tommcdo/vim-lion'

" Commenting
Plugin 'tpope/vim-commentary'

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
