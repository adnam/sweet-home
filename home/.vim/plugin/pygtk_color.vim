" cool color selector
" color selector must be in path.
amenu  Color.Insert\ Hex\ Color <Esc><Esc>:r!color_select --hex<ENTER>
amenu  Color.Insert\ RGB\ Color <Esc><Esc>:r!color_select --rgb<ENTER>
imap <C-A-H> <Esc>:r!color_select --hex<ENTER>
imap <C-A-R> <Esc>:r!color_select --rgb<ENTER>
