set number relativenumber
set colorcolumn=81	""columna roja
set laststatus=0
set smartindent
set autoindent
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set showtabline=4
set formatoptions-=cro
set hidden
set nowrap
set encoding=utf-8
set ruler
set mouse=a
set splitbelow
set splitright
set clipboard=unnamedplus
set background=dark
set autochdir
syntax enable
filetype on
filetype indent on
filetype plugin on
set termguicolors
set pyxversion=3

call plug#begin('~/.config/nvim/plugged')

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'wadackel/vim-dogrun'
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'scrooloose/NERDTree'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'Yggdroot/indentLine'
    Plug 'alvan/vim-closetag'
    Plug 'ryanoasis/vim-devicons'

call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

colorscheme dogrun

"Transparent window
"highlight Normal guibg=none

"indentLine
let g:indentLine_setColors = 239
let g:indentLine_char = '¦'

"CloseTag 
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml,javascript'
let g:closetag_emptyTags_caseSensitive = 1

let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" NERDTree
map <Leader>n :NERDTreeToggle<CR>


inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
