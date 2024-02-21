set nocompatible
set encoding=utf-8
"let g:polyglot_disabled = ['markdown']
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
Plugin 'luochen1990/rainbow'
Plugin 'mileszs/ack.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'sheerun/vim-polyglot'
Plugin 'ycm-core/YouCompleteMe'
"Plugin 'rootkiter/vim-hexedit'
call vundle#end()
filetype plugin indent on
syntax on

let g:rainbow_active = 1
let g:ackprg = 'ag --nogroup --column'
let g:airline_powerline_fonts = 1
"set background=dark
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
colorscheme solarized8_dark_low
let g:airline_theme='violet'
let mapleader = ","
map <space> /

set laststatus=2
set showtabline=2
set noshowmode
set number
set cursorline
set ruler
set foldcolumn=1

" Omnifunc
set omnifunc=syntaxcomplete#Complete
set completeopt+=longest,menuone,noinsert
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
set lazyredraw

set showmode
set showcmd

set hlsearch
nnoremap <F3> :nohlsearch<CR>
set incsearch
set ignorecase
set smartcase
set showmatch
set shortmess-="ilS"
set shortmess+="scC"
" Restore line position after exit
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
augroup templates
    autocmd!
	autocmd BufNewFile *.hla 0r ~/.vim/templates/skeleton.hla
    autocmd BufNewFile *.hla 1$pu='// Created On: '.strftime('%Y-%m-%d %H:%M:%S')
    autocmd BufNewFile *.hla 2$pu='// Last Modified: '.strftime('%Y-%m-%d %H:%M:%S')
    autocmd BufNewFile *.hla :normal 4j$
augroup END

autocmd BufNewFile,BufRead *.hla   set syntax=hla
autocmd BufNewFile,BufRead *.hla   set filetype=hla
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set regexpengine=0

