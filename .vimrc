syntax on
set nocompatible
set number relativenumber
set tabstop=4
set clipboard=unnamedplus
set shiftwidth=4
set noexpandtab
set copyindent
set softtabstop=0
set smarttab
set smartindent
set autoindent
set clipboard=unnamedplus
set mouse=a

call plug#begin('~/.vim/plugged')
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'wadackel/vim-dogrun'
	Plug 'ryanoasis/vim-devicons'
	Plug 'sheerun/vim-polyglot'
	Plug 'chun-yang/auto-pairs'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'yggdroot/indentline'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='deus'
let g:airline_powerline_fonts = 1

colorscheme dogrun

""colors
set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
""""""

let g:indentLine_enabled = 1
let g:indentLine_setColors = 239
let g:indentLine_char = '|'

""moverse entre buffers
map <silent> <C-Up> :bfirst<cr>
map <silent> <C-Down> :blast<cr>
map <silent> <C-Left> :bprevious<cr>
map <silent> <C-Right> :bnext<cr>

""guardar y salir"
nmap <C-w> :w <CR>
nmap <C-q> :q <CR>
