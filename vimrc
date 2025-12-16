set nocompatible
set encoding=utf-8
"let g:polyglot_disabled = ['markdown']
set history=200
set t_Co=256
set mouse=a
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
let g:airline_powerline_fonts = 1
let g:airline_theme='violet'

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rhysd/vim-clang-format'
Plugin 'easymotion/vim-easymotion'
Plugin 'bkad/CamelCaseMotion'
"Plugin 'luochen1990/rainbow'
"Plugin 'mileszs/ack.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'sheerun/vim-polyglot'
"'Plugin 'ycm-core/YouCompleteMe'
"Plugin 'rootkiter/vim-hexedit'
call vundle#end()
filetype plugin indent on
syntax on

"let g:rainbow_active = 1
"let g:ackprg = 'ag --nogroup --column'
"let g:ycm_extra_conf_globlist = ['projects/jail/*']
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"if executable('ag')
"  let g:ackprg = 'ag --vimgrep'
"endif
colorscheme solarized8_dark_low
let mapleader = ","
map <space> /

set laststatus=2
set showtabline=2
set noshowmode
set number
set cursorline
set ruler
set foldcolumn=2
set foldenable
set foldmethod=manual
" Omnifunc
"set omnifunc=syntaxcomplete#Complete
"set completeopt+=longest,menuone,noinsert
"set dictionary+="/usr/share/dict/words"

" Menus can use arrows and enter
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

set shiftwidth=4
set tabstop=4
set backspace=eol,start,indent
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set softtabstop=4
set smarttab

"inoremap <Backspace> V:s/^\s\{1,}//<CR>
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
"autocmd BufWinLeave * mkview
"autocmd BufWinEnter * loadview

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set regexpengine=0

