" Don't try to be vi compatible
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Load plugins here (pathogen or vundle)
execute pathogen#infect()

" Turn on syntax highlighting
syntax on
syntax sync fromstart

" For plugins to load correctly
filetype plugin indent on

" Ctrl-p VIM
set runtimepath^=~/.vim/bundle/ctrlp.vim

" General options
"----------------------------------------
set backspace=2
set number
set nowrap
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
set splitright
set grepprg=ack


" TODO: Pick a leader key
" let mapleader = ","


" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Font
set guifont="Droid Sans Mono 10"

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" File browser
map <C-M-e> :vsplit .<CR>
let g:explHideFiles='^\.,\.pyc$'

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" move the current line up or down
nmap <C-Down>  :m+<CR>==
nmap <C-Up> :m-2<CR>==
imap <C-Down>  <C-O>:m+<CR><C-O>==
imap <C-Up> <C-O>:m-2<CR><C-O>==

" move the selected block up or down
vmap <C-Down>  :m'>+<CR>gv=gv
vmap <C-Up> :m'<-2<CR>gv=gv


" Indentation using Tab
"----------------------------------------
inoremap <S-Tab> <C-O><LT><LT>
nnoremap <Tab> >>
nnoremap <S-Tab> <LT><LT>
vnoremap <Tab> >
vnoremap <S-Tab> <LT>

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

set guioptions-=T

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
" nnoremap / /\v
" vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Abreviations
"----------------------------------------
ab dsep                         # ===================================================================================<CR>
ab lsep                         # -----------------------------------------------------------------------------------<CR>
ab msep                         /* <CR>-----------------------------------------------------------------------------------*/<CR>
ab csst                         <link rel="Stylesheet" type="text/css" href="">
ab jst                          <script type="text/javascript" src=""></script>
ab b1sr                         border: 1px solid red;
ab dgi                          document.getElementById("")
ab dgt                          document.getElementsByTagName("")
ab dce                          document.createElement("")
ab dct                          document.createTextNode("")
ab pyhead                       # -*- coding: utf-8 -*-<CR>"""<CR>"""
ab pymain                       if "__name__" == "__main__":
ab jsfor                        for (var i = 0; i < .length; i++) {<CR>}<CR>
ab pdb                          import pdb<CR>pdb.set_trace()

" Buffers
"----------------------------------------
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavTabs = 1
let g:miniBufExplMapCPageSwitchBufs = 1

" Close buffer
nmap <C-w> :bd<CR>

" Close buffer without saving
nmap <C-M-w> :bd!<CR>

" Split horizontally
nmap <M-h> :new<CR>

" Split vertically
nmap <M-v> :vnew<CR>

" Buffer above
nmap <M-Up> :wincmd k<CR>

" Buffer below
nmap <M-Down> :wincmd j<CR>

" Left buffer
nmap <M-Left> :wincmd h<CR>

" Right buffer
nmap <M-Right> :wincmd l<CR>

" Previous buffer
nmap <M-n> :wincmd W<CR>

" Next buffer
nmap <M-n> :wincmd w<CR>

" Last selected buffer
nmap <M-l> :wincmd p<CR>

" Rotate buffers
nmap <M-r> :wincmd r<CR>

"----------------------------------------

" Clear highlighting
map <BS> :nohl<CR>

" Tag explorer
map <C-T> :Tlist<CR>

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" colorscheme solarized 
colorscheme chocolate

" NERDTree
" autocmd vimenter * NERDTree
