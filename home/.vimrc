" MS Windows-like behavior
"----------------------------------------
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

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
if $OS=="Windows_NT"
    set guifont=Droid\ Sans\ Mono:g10
else
    set guifont=Droid\ Sans\ Mono\ 10
endif
set splitright
set grepprg=ack-grep

" Y U NO COMMIT?
"----------------------------------------
" let g:YUNOcommit_after = 20

" Syntax highlighting
"----------------------------------------
syntax enable
syntax sync fromstart
colorscheme chocolate

" Highlight indent tabs
" TODO: make this work
"----------------------------------------
syntax match IndentTab /^\t*/
hi IndentTab guibg=#191919

" Folding
"----------------------------------------
set foldlevel=1000
set foldmethod=indent
map <kMinus> zc
map <kPlus> zo

" Python utilities
"----------------------------------------
"let python_highlight_builtins = 1
let python_highlight_exceptions = 1
let python_highlight_string_formatting = 1
let python_highlight_indent_errors = 1
let python_slow_sync = 1

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

" Disable parts of the GUI
set guioptions-=T
" set guioptions-=m

" Tag explorer
map <C-T> :Tlist<CR>

" File browser
map <C-M-e> :vsplit .<CR>
let g:explHideFiles='^\.,\.pyc$'

" Toggle word wrap
map <F6> :set wrap!<CR>

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

" Python functions
"----------------------------------------
function! Template(name, ...)
python << EOF

import vim
from os import environ
from Cheetah.Template import Template
from time import localtime

def getDate():
    months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    date = localtime()
    return "%s %d" % (months[date.tm_mon - 1], date.tm_year)

try:
    template_file = file = environ["HOME"] + "/.vim/templates/" + vim.eval("a:name") + ".tmpl"
    template = Template(template_file)
except Error:
    template_file = file = environ["HOME"] + "/vimfiles/templates/" + vim.eval("a:name") + ".tmpl"
    template = Template(template_file)

for i in range(int(vim.eval("a:0"))):
    setattr(template, "arg%d" % (i + 1), vim.eval("a:%d" % (i + 1)))

try:
    output = template.respond()
except:
    print "Missing template arguments"
else:
    start = vim.current.window.cursor[0] - 1
    lines = output.split("\n")
    vim.current.buffer[start:start + len(lines)] = lines
    row, col = vim.current.window.cursor
    vim.current.window.cursor = row + len(lines) - 1, col + len(lines[-1])

EOF
endfunction

" Autocommands
"----------------------------------------
if !exists("autocommands_loaded")
        let autocommands_loaded = 1
        autocmd BufWritePre *.py :%s/\s\+$//e
        au BufNewFile   *.html  :call Template("html")
        " au BufNewFile   *.py    :call Template("pyheader")
endif


" Load custom filetype mappings
" ---------------------------------------
if $OS=="Windows_NT"
    so $HOME/vimfiles/myfiletypes.vim
else
    so $HOME/.vim/myfiletypes.vim
endif

