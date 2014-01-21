" Setup pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" Colorscheme settings.
syntax on
if has('gui_running')
    set background=dark
    colorscheme solarized
endif

set guifont=Source\ Code\ Pro\ 12

filetype plugin indent on

" UTF8 or die.
set encoding=utf8

" Numbered lines.
set number

" Powerbar settings
set laststatus=2
set noshowmode

" Enable the wild menu
set wildmenu

" Keep cursor away from edges of screen.
set so=3

" Long lines
set display=lastline

" Tab settings.
set expandtab
set shiftwidth=4
set ts=4

" Buffer settings
set autoread

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
set incsearch
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

" Fix behaviour of backspace
set backspace=indent,eol,start
