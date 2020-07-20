set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Unix and git Commands on vim
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-eunuch'

" Syntax
Plugin 'sheerun/vim-polyglot'
Plugin 'airblade/vim-gitgutter'
Plugin 'dense-analysis/ale'

" Don't know or didn't config
Plugin 'let-def/vimbufsync'

" Latex
Plugin 'lervag/vimtex'

" Web Dev and Js
Plugin 'pangloss/vim-javascript'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-webdevicons'

" Function
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'

" Visuals
Plugin 'itchyny/lightline.vim'

" Colorschemes
Plugin 'morhetz/gruvbox'
Plugin 'sickill/vim-monokai'

" Finder
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'

" Completion
Plugin 'ervandew/supertab'
Plugin 'mattn/emmet-vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'


call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++ 	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
"set spell	" Enable spell-checking
set visualbell	" Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set shiftwidth=4" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set tabstop=4
set softtabstop=4	" Number of spaces per Tab
set expandtab
set showcmd
syntax on
 
" Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
nnoremap j gj
nnoremap k gk
nnoremap E $
nnoremap B ^

" Airline
set laststatus=2

" Colorschemes
set bg=dark
colorscheme gruvbox

" Transparency
highlight Normal ctermbg=None

" Ale settings
let g:ale_set_highlights = 1
let g:ale_completion_enabled = 0 

" Ycm compatible with utilsnips
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-j>'
 
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" NerdTree
map <C-o> :NERDTreeToggle<CR>
