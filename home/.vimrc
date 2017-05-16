if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

" Good defaults
Plug 'tpope/vim-sensible'

" Required libraries
Plug 'tomtom/tlib_vim'

" Up to date language pack
Plug 'sheerun/vim-polyglot'

" Tim Pope goodness
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Tab completion
Plug 'ajh17/VimCompletesMe'

" Manage ctags
Plug 'ludovicchabant/vim-gutentags'

" Ctag helpters
Plug 'tomtom/ttags_vim'

" Quickfix improvements
Plug 'romainl/vim-qf'
Plug 'romainl/vim-qlist'

" Quick movement using hints
let g:sneak#label = 1
Plug 'justinmk/vim-sneak'

" Alignment plugin
Plug 'tommcdo/vim-lion'

" Commenting
Plug 'tpope/vim-commentary'

" Highlight annoying whitespace
Plug 'ntpeters/vim-better-whitespace'

" Color schemes
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
Plug 'jnurmine/Zenburn'
Plug 'tomasr/molokai'

call plug#end()

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
