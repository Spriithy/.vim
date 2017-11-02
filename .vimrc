set encoding=utf-8
set t_Co=256

" for vim 8
if (has("termguicolors"))
	set termguicolors
endif

set mouse=a

" break compatibility with vi
set nocompatible

" buffers can exist in background
set hidden

" enable line numbers
set nu

" show line and column markers
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
"set cursorcolumn

" useful stuff
filetype indent on
filetype plugin on
filetype plugin indent on

set autoindent
" copy previous indent on enter
set copyindent
set smartindent

" toggle paste mode (to paste properly indented text)
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" pressing \<space> clears the searh highlight
nmap <silent> <leader><space> :nohlsearch<CR>

set noswapfile
set nobackup
set nowb

" vim-plug
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'mhartington/oceanic-next'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()

au VimEnter *  NERDTree

colorscheme OceanicNext
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme = 'oceanicnext'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

