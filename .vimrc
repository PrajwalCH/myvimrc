" enable 24-bit true color
if (has("termguicolors"))
  set termguicolors
endif

syntax on
filetype plugin indent on

" set line number as well as relative number
set relativenumber
set number

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab

set smartindent
set autoindent

set smartcase
set incsearch
set nohlsearch

"set breakindent
"set formatoptions=l
set nowrap

set scrolloff=5

set hidden
set nobackup
set noswapfile

set completeopt=menuone,longest
set shortmess+=c

set cino=(0
"
"void
"function();
set cino+=t0

"namespace {
"void function();
"void functionB();
"}
set cino+=N-s

call plug#begin('~/.vim/plugged')
	Plug 'Townk/vim-autoclose'
	Plug 'luochen1990/rainbow'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'morhetz/gruvbox'
call plug#end()

let g:rainbow_active = 1
let g:gruvbox_contrast_dark = "hard"
set background=dark

autocmd vimenter * ++nested colorscheme gruvbox

nnoremap <C-x> :q!<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-w> :wq<CR>
nnoremap <C-f> :FZF<CR>
nnoremap <C-b> :Buffer<CR>

