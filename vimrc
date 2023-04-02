
" Add fzf to runtime path.
set rtp+=/usr/local/opt/fzf

" Disable compatibility mode with vi.
set nocompatible

" Enable file detection.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
" filetype indent on

" Do not save backup files.
set nobackup

" Save N number of commands in the history for undoing (default = 20).
set history=100

" Disable line wrapping.
set nowrap

" Display confirmation dialog when closing unsaved files.
set confirm

" Disable swap file creation.
" set noswapfile

" Enable spell checking.
" set spell

" COLOR --- {{{

" Enable syntax highlighting.
syntax enable

" Use the solarized colorscheme.
colorscheme nord

" }}}

" VIMDIFF -- {{{

" Default to not read-only in vimdiff.
set noro

" }}}

" NUMBER AND CURSOR POS --- {{{

" Show hybrid line numbers. Current line shows absolute number and all other lines show relative numbers.
set number relativenumber

" Highlight cursor line.
set cursorline

" Highlight cursor column.
set cursorcolumn

" Highlight the Nth column.
set colorcolumn=120

" }}}

" INDENTATION --- {{{

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs for indentation.
set expandtab

" Automatically use indentation of the parent line.
set autoindent

" }}}

" SCROLL --- {{{

" Show atleast N lines above or below the cursor.
set scrolloff=10

" Show alteast N columns  to the left or right of the cursor.
set sidescrolloff=10

" }}}

" SEARCH --- {{{

" While searching through a file, incrementally highlight matching characters.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Overwrite ignorecase if capital letters included in search term.
set smartcase

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" }}}

" STATUS AND INFO --- {{{

" Set window tile based on the current file being edited.
set title

" Show partial comamnd in the last line on the screen.
set showcmd

" Show the current vi mode on the last line.
set showmode

" Clear status line when vimrc is reloaded.
set statusline=

" Set line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status line on the second to last line.
set laststatus=2

" }}}

" WILDMENU --- {{{
" Enable auto completion menu after pressing TAB.
" set wildmenu
" Make wildmenu behave similar to Bash completion.
" set wildmode=list:longest
" Ignore files with extensions in wildmenu.
" set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
"}}}

" ERRORS --- {{{
" Disable audio beep on errors.
set noerrorbells
" Flash screen incase of errors.
" set visualbell 
" }}}

" MAPPINGS --- {{{
" The default leader key is \.
" let mapleader = '\'
" }}}

" FOLDING --- {{{

" Fold using indentation.
" NOTE: This is overridden below in VIMSCRIPT for vim files to use marker.
set foldmethod=indent

" Only fold upto 3 nested levels.
set foldnestmax=3

" Disable folding by default.
set nofoldenable

" }}}

" VIMSCRIPT -- {{{
" Enable code folding using the marker for vim files.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

