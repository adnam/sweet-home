" Generated by Inspiration at Sweyla
" http://inspiration.sweyla.com/code/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "inspiration-939216"

if version >= 700
  hi CursorLine guibg=#000009
  hi CursorColumn guibg=#000009
  hi MatchParen guifg=#CBAD22 guibg=#000009 gui=bold
  hi Pmenu 		guifg=#FFFFFF guibg=#323232
  hi PmenuSel 	guifg=#FFFFFF guibg=#929241
endif

" General colors
hi Cursor       guifg=NONE guibg=#FFFFFF gui=none
hi Normal       guifg=#FFFFFF guibg=#000009 gui=none
hi NonText      guifg=#FFFFFF guibg=#000009 gui=none
hi LineNr       guifg=#FFFFFF guibg=#323232 gui=none
hi Normal       guifg=#FFFFFF guibg=#000009 gui=none
hi StatusLine   guifg=#FFFFFF guibg=#000009 gui=italic
hi StatusLineNC guifg=#FFFFFF guibg=#000009 gui=none
hi VertSplit    guifg=#FFFFFF guibg=#000009 gui=none
hi Folded       guifg=#FFFFFF guibg=#000009 gui=none
hi Title		guifg=#929241 guibg=NONE	gui=bold
hi Visual		guifg=#CBAD22 guibg=#323232 gui=none
hi SpecialKey	guifg=#72FF3F guibg=#323232 gui=none

" Syntax highlighting
hi Comment guifg=#929241 gui=none
hi Constant guifg=#72FF3F gui=none
hi Number guifg=#72FF3F gui=none
hi Identifier guifg=#BEDD08 gui=none
hi Statement guifg=#BEDD08 gui=none
hi Function guifg=#FFFF69 gui=none
hi Special guifg=#C7FF2A gui=none
hi PreProc guifg=#C7FF2A gui=none
hi Keyword guifg=#CBAD22 gui=none
hi String guifg=#90DD70 gui=none
hi Type guifg=#A1FF00 gui=none