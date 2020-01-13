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

" Add additional text targets
Plug 'wellle/targets.vim'

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

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Manage ctags
Plug 'ludovicchabant/vim-gutentags'

" Ctag helpers
Plug 'tomtom/ttags_vim'

" Quickfix improvements
Plug 'romainl/vim-qf'
Plug 'romainl/vim-qlist'

" Quick movement using hints
Plug 'justinmk/vim-sneak'

" Alignment plugin
Plug 'tommcdo/vim-lion'
let g:lion_squeeze_spaces = 1

" Commenting
Plug 'tpope/vim-commentary'

" Undotree
Plug 'mbbill/undotree'

" Preview substitutions
Plug 'markonm/traces.vim'

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
    set guioptions-=m
    set guioptions-=T
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

" Leader
let mapleader=' '

" nnoremap <leader>p :find *
" nnoremap <leader>r :let cmds = input('command: ') \| call system('tmux send-keys -t +1 "' . cmds . '" Enter')<cr>
" nnoremap <leader>R :call system('tmux split -v -p 20\; last-pane')<cr>
" nnoremap <leader>" :split<cr>
" nnoremap <leader>t :ltag<space>/ \| lop<left><left><left><left><left><left>
" nnoremap <leader>% :vsplit<cr>
" nnoremap <leader>x :TxSigInt!<cr>
" nnoremap <leader>z :call ToggleFolds()<cr>

nnoremap <leader>; :
nnoremap <leader>A :argadd **/*
nnoremap <leader>a :argadd <c-r>=fnameescape(expand('%:p:h'))<cr>/*<C-d>
nnoremap <leader>B :ls<cr>:b<space>
nnoremap <leader>b :b <C-d>
nnoremap <leader>c <esc>:close<cr>
nnoremap <leader>e :e <c-r>=fnameescape(expand('%:p:h'))<cr>/*<C-d>
nnoremap <leader>f :Files<cr>
nnoremap <leader>G :grep <c-r><c-w><cr>
nnoremap <leader>g :grep<space>
nnoremap <leader>i :Ilist<space>
nnoremap <leader>L :lgrep <c-r><c-w><cr>
nnoremap <leader>l :lgrep<space>
nnoremap <leader>m :make<cr>
nnoremap <leader>o <c-w>o
nnoremap <leader>q :b#<cr>
nnoremap <leader>w <c-w>w
nnoremap <leader>W <c-w>W

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

" Use Ag over Grep
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
endif

" Per-directory .vimrc files
set exrc
set secure
