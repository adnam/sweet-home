" Generated by Inspiration at Sweyla
" http://inspiration.sweyla.com/code/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "inspiration-803772"

if version >= 700
  hi CursorLine guibg=#0F010A
  hi CursorColumn guibg=#0F010A
  hi MatchParen guifg=#E46EFF guibg=#0F010A gui=bold
  hi Pmenu 		guifg=#FFFFFF guibg=#323232
  hi PmenuSel 	guifg=#FFFFFF guibg=#2FCAC3
endif

" General colors
hi Cursor       guifg=NONE guibg=#FFFFFF gui=none
hi Normal       guifg=#FFFFFF guibg=#0F010A gui=none
hi NonText      guifg=#FFFFFF guibg=#0F010A gui=none
hi LineNr       guifg=#FFFFFF guibg=#323232 gui=none
hi Normal       guifg=#FFFFFF guibg=#0F010A gui=none
hi StatusLine   guifg=#FFFFFF guibg=#0F010A gui=italic
hi StatusLineNC guifg=#FFFFFF guibg=#0F010A gui=none
hi VertSplit    guifg=#FFFFFF guibg=#0F010A gui=none
hi Folded       guifg=#FFFFFF guibg=#0F010A gui=none
hi Title		guifg=#2FCAC3 guibg=NONE	gui=bold
hi Visual		guifg=#E46EFF guibg=#323232 gui=none
hi SpecialKey	guifg=#F3DBFF guibg=#323232 gui=none

" Syntax highlighting
hi Comment guifg=#2FCAC3 gui=none
hi Constant guifg=#F3DBFF gui=none
hi Number guifg=#F3DBFF gui=none
hi Identifier guifg=#95B2D0 gui=none
hi Statement guifg=#95B2D0 gui=none
hi Function guifg=#2688FF gui=none
hi Special guifg=#72FFFF gui=none
hi PreProc guifg=#72FFFF gui=none
hi Keyword guifg=#E46EFF gui=none
hi String guifg=#6AFFFB gui=none
hi Type guifg=#1AFFAA gui=none
