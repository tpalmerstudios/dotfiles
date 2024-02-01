set nocompatible
set history=200
set t_Co=256


set rtp+=~/.vim/bundle/Vundle.vim
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'AnsiEsc.vim'
Plugin 'luochen1990/rainbow'
Plugin 'mileszs/ack.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
call vundle#end()
filetype plugin indent on
syntax on

let g:rainbow_active = 1
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:airline_powerline_fonts = 1
let g:SuperTabDefaultCompletionType = "context"
set background=dark
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
colorscheme molokai
let g:airline_theme='violet'
let mapleader = ","

set laststatus=2
set showtabline=2
set noshowmode
set number
set cursorline
set ruler
set foldcolumn=1
set guioptions-=r,R,l,L

" Omnifunc
set omnifunc=syntaxcomplete#Complete
set completeopt+=longest,menuone,noselect,noinsert

set dictionary+="/usr/share/dict/words"

" Menus can use arrows and enter
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'


set shiftwidth=4
set tabstop=4
set backspace=eol,start,indent
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

try
	    set undodir=~/.vim/undodir
		    set undofile
catch
endtry


set visualbell
set encoding=utf-8
set lazyredraw

set showmode
set showcmd

set hlsearch
nnoremap <F3> :nohlsearch<CR>
set incsearch
set ignorecase
set smartcase
set showmatch
"set shortmess-="fsnxtToOcC"
" Restore line position after exit
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set regexpengine=0

