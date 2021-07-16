set termguicolors
set noarabicshape
colorscheme dracula 
"darcula
source ~/.config/nvim/darcula.vim

"Enable spellCheck
"set spell

if !has('gui_running')
	set t_Co=256
endif

"=> >=
set guifont=JetBrains\ Mono\ Meduim:h9.5

set fillchars=vert:│,eob:\ 
"set fillchars=vert:⡁
"hi Comment gui=italic
hi CodeError guibg=#532B2E ctermbg=52 gui=underline
hi CodeWarning gui=undercurl
hi Statement  ctermfg=172  guifg=#CC7832
if !exists('g:GuiLoaded') && !exists('g:gonvim_running')
	hi LineNr guibg=NONE guifg=#4e4b4b
	"hi Normal guibg=NONE
	hi SignColumn guibg=NONE
	hi VertSplit guifg=#32312f
	hi InfoSign ctermfg=101 ctermbg=236 guifg=#756D56 guibg=NONE
	hi ErrorSign ctermfg=124 ctermbg=236 guifg=#9E2927 guibg=NONE
	hi WarningSign ctermfg=136 ctermbg=236 guifg=#BE9117 guibg=NONE
	hi CodeInfo ctermbg=101 guibg=#243124 gui=undercurl
	hi CodeHint ctermfg=243 ctermbg=237 guibg=#3B3B3B
	hi CodeWarning ctermbg=59 gui=undercurl guibg=#313124
	hi CodeError ctermbg=52 gui=underline guibg=#312424
	""hi CursorLine guibg=NONE

	hi CursorLineNr guifg=#ffffff guibg=NONE
endif

"dedicated to Dracula theme:
let g:airline_theme='dracula'
hi Pmenu guibg=#44475a
"guifg=#1d1f26 guibg=#55557f
hi Visual guibg=#55557f
hi VertSplit gui=NONE guifg=#55557f 
hi StatusLine guibg=#1d1f26 guifg=#1d1f26
hi TabLineFill guibg=#1d1f26 guifg=#1d1f26
hi NonText guifg=#55557f guibg=NONE
hi DraculaSelection ctermbg=239 guibg=#6f7593
hi link IdentifierUnderCaret DraculaSelection

set number relativenumber
"set number

"Hilight current line
"set cursorline

set nowrap
"Tab setting
set tabstop=3
set shiftwidth=3
set autoindent
set noexpandtab

"function AdvancedComment()
"	syn match TodoTitle /TODO\s\zs.*\ze/
"	syn match TodoNumberedItem /^\s*[0-9]*\..*/
"	syn cluster ToDoComment contains=TodoTitle,TodoNumberedItem
"	syn region Todo start="/\*TODO" end="\*/" fold contains=@ToDoComment
"
"	"syn match TodoTitle  display contained /TODO\s*\zs.*/ 
"	"syn match Todo /\/\/T[OoDd].*\(\n\s*\/\/.*\)*/ contains=@TodoTitle
"	syn match SingleMulti /\/\/.*\(\n\s*\/\/.*\)*/ fold
"	"syn match NumberedComment /\/\/[0-9]*\..*\(\n\s*\/\/.*\)*/
"	"syn match NumberedCommentDone /\/\/\s[0-9]*\..*\(\n\s*\/\/.*\)*/
"	"syn match Warning /\/\/WARNING.*\(\n\s*\/\/.*\)*/
"	""syn match TodoMultiline /\/\*T[OoDd].*\_.\{-}\*\//
"	"syn match TodoDone /\/\/\sT[OoDd].*\(\n\s*\/\/.*\)*/
"	"syn match TodoMultilineDone /\/\*\sT[OoDd].*\_.\{-}\*\//
"	""syn region TodoBlock start='/\*' end='\*/' contains 
"endfunction

"autocmd FileType go call GoAdvancedHighlight()
"function GoAdvancedHighlight()
"	syn match goExportedFunction /func \zs[A-Z][a-z0-9_]*/
"	syn match goExportedFiled /\.\zs[\s][A-Z][A-Za-z0-9_]*/
"	syn match goExportedFiledAssign /[. \t]\zs[A-Z][A-Za-z0-9_]*[ \t]*\ze=/
"	"syn match goExportedFiledAssign /\.\zs[A-Z][A-Za-z0-9_]*\ze/
"	"cdsConsts/\<cds[A-Z][A-Za-z0-9_]*/
"	syn match goExportedFunctionCall /[. \t]\zs[A-Z][A-Za-z0-9_]*\ze(/
"	syn match goVarDefine /((^|, )(:=|==|!=))+$/
"	syn keyword     goBuiltins          append cap close complex copy delete imag len
"	syn keyword     goBuiltins          make new panic print println real recover
"	syn region PFold start='(' end=')' transparent fold
"	call AdvancedComment()
"endfunction

hi goExportedFunctionCall guifg=#ffbb99 gui=bold
hi goExportedFiled guifg=#aaffaa gui=bold
hi def link goExportedFiledAssign goExportedFiled
hi goVarDefine guifg=#ff2222
hi link goBuiltins Keyword

autocmd FileType javascript call JSAdvancedHighlight()
function JSAdvancedHighlight()
	syn match goExportedFiled /\.\zs[A-Za-z0-9_]*/
	syn match goExportedFiledAssign /[A-Za-z0-9_]*\ze:/
	syn match goExportedFunctionCall /\zs[A-Za-z0-9_]*\ze(/
	"Tag name /<\zs[A-Za-z/]* 
	syn keyword javaScriptReserved async async await
	"call AdvancedComment()
endfunction

hi link javaScriptReserved Keyword

"This part commented as use of TODO Plugin
"hi Todo guifg=#ff7755
"hi TodoTitle guifg=#fefefe
"hi link TodoMultiline Todo
"hi link NumberedComment Todo
"hi link TodoNumberedItem Todo
"hi TodoDone guifg=#77ff55 
"hi link SingleMulti Comment
"hi link TodoMultilineDone TodoDone
"hi link NumberedCommentDone TodoDone
hi Warning guifg=#ff9900 gui=bold,italic 
source ~/.config/nvim/cursor.vim

autocmd FileType dart call DartConf()
function DartConf()
	set tabstop=2 shiftwidth=2 expandtab
endfunction


hi GitGutterAdd guifg=#77ff55
hi GitGutterChange guifg=#ff9900
hi GitGutterDelete guifg=#ff7755
hi GitGutterChangeDelete guifg=#ff2222

"hi Keyword ctermfg=172 gui=NONE guifg=#CC7832
hi Keyword ctermfg=172 gui=NONE guifg=#FF79C6
