" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ronaharon@yahoo.com>
" Last Change:	2003 May 02

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "granito"
hi Normal		  guifg=#e2e2e2  guibg=#222222
hi Scrollbar	  guifg=cyan guibg=darkcyan
hi Menu			  guifg=cyan guibg=black
hi SpecialKey	  term=bold  cterm=bold  ctermfg=darkred  guifg=lightblue
hi NonText		  term=bold  cterm=bold  ctermfg=darkred  gui=bold	guifg=white
hi Directory	  term=bold  cterm=bold  ctermfg=brown	guifg=lightblue
hi ErrorMsg		  term=standout  cterm=bold  ctermfg=grey  ctermbg=blue  guifg=White  guibg=Red
hi Search		  term=reverse	ctermfg=white  ctermbg=red	guifg=white  guibg=#7080dd gui=bold
hi MoreMsg		  term=bold  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=SeaGreen
hi ModeMsg		  term=bold  cterm=bold  gui=bold  guifg=White	guibg=Blue
hi LineNr		  term=underline  cterm=bold  ctermfg=darkcyan	guifg=#707070
hi Question		  term=standout  cterm=bold  ctermfg=lightgreen	gui=bold  guifg=Green
hi StatusLine	  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=#222222
hi StatusLineNC   term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi Title		  term=bold  cterm=bold  ctermfg=darkmagenta  gui=bold	guifg=#a05000
hi Visual		  term=reverse	cterm=reverse  gui=reverse
hi WarningMsg	  term=standout  cterm=bold  ctermfg=darkblue  guifg=Red
hi Cursor		  guifg=bg	guibg=Green
hi Comment		  term=bold  cterm=bold ctermfg=cyan  guifg=#307925
hi Constant		  term=underline  cterm=bold ctermfg=magenta  guifg=#bb8844
hi Special		  term=bold  cterm=bold ctermfg=red  guifg=#505080 gui=bold
hi Identifier	  term=underline   ctermfg=brown  guifg=#e2e2e2
hi Function		  guifg=#cc0000 gui=bold
hi Operator		  guifg=black
hi Statement	  term=bold  cterm=bold ctermfg=yellow	guifg=#e2e2e2 gui=bold
hi PreProc		  term=underline  ctermfg=darkblue	guifg=#505080 gui=bold
hi Type			  term=underline  cterm=bold ctermfg=lightgreen  gui=bold  guifg=#e2e2e2
hi Error		  term=reverse	ctermfg=darkcyan  ctermbg=white guifg=Red	guibg=white
hi Todo			  term=standout  ctermfg=black	ctermbg=darkcyan  guifg=#f5f5f5 guibg=#aa4040 gui=bold
hi VertSplit	  guibg=#505050 guifg=white
hi link IncSearch		Visual
hi link String			Constant
hi link Character		Constant
hi link Number			Constant
hi link Boolean			Statement
hi link Float			Number
" hi link Function		Identifier
hi link Conditional		Statement
hi link Repeat			Statement
hi link Label			Statement
" hi link Operator		Statement
hi link Keyword			Statement
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special
