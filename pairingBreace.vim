"Sourround with "`'(){}[] in insert+select mode
snoremap <silent> " <C-G>"sdi""<ESC>h"sp<ESC>a
snoremap <silent> ' <C-G>"sdi''<ESC>h"sp<ESC>a
snoremap <silent> ` <C-G>"sdi``<ESC>h"sp<ESC>a
snoremap <silent> { <C-G>"sdi{}<ESC>h"sp<ESC>a
snoremap <silent> < <C-G>"sdi<><ESC>h"sp<ESC>a
snoremap <silent> / <C-G>"sdi/**/<ESC>hh"sp<ESC>a
"vnoremap <silent> { "sd""hpi
snoremap <silent> ( <C-G>"sdi()<ESC>h"sp<ESC>a
snoremap <silent> [ <C-G>"sdi[]<ESC>h"sp<ESC>a


"snoremap <expr> ( mode() ==# "v" ? "<C-g>o<Esc>i(<Esc>gvol<Esc>a)" : "<C-g><Esc>O)<Esc>gvo<Esc>o("
"xnoremap <silent> O)<Esc>gvo<Esc>o(


"Pair completion, but I type by myself ;)
inoremap <expr> { '{}<LEFT>'
inoremap <expr> [ '[]<LEFT>'
inoremap <expr> ( '()<LEFT>'
inoremap <expr> < '<><LEFT>'
"inoremap { {}<ESC>i
"inoremap {<CR> {<Cr>}<Esc>O
"inoremap // //
"inoremap /** /**/<ESC>hi
"inoremap /*<CR> /*<CR>*/<ESC>O
"Quote pairs migrated to new version with <expr>
"inoremap ` ``<ESC>i
"inoremap ' ''<ESC>i
"inoremap " ""<ESC>i

function! ChUCr()
	return getline(".")[col(".")-1]
endfunction

function! PChUCr()
	return getline(".")[col(".")-2]
endfunction

inoremap <expr> " (&ft == 'vim' && col(".") == 1 ? '"' : (ChUCr() == '"' ? '<RIGHT>' : '""<LEFT>'))
inoremap <expr> ' (&ft == 'rust' && getline(".")[col(".")-2] == '&' ? "'" :(ChUCr() == "'" ? '<RIGHT>' : "''<LEFT>"))
inoremap <expr> ` (ChUCr() == "`" ? '<RIGHT>' : "``<LEFT>")
inoremap <expr> ) (PChUCr() == "(" && ChUCr() == ")" ? '<RIGHT>' : ")")
inoremap <expr> ] (PChUCr() == "[" && ChUCr() == "]" ? '<RIGHT>' : "]")
inoremap <expr> > (PChUCr() == "<" && ChUCr() == ">" ? '<RIGHT>' : ">")
inoremap <expr> } (PChUCr() == "{" && ChUCr() == "}" ? '<RIGHT>' : "}")


function! IsC_MultiLineComment() 
	"/**/
	if getline(".")[col(".")-3:col(".")-2] == '/*' && getline(".")[col(".")-1:col(".")] == '*/'
		return 1
	endif
	return 0
endfunction


function! PairedBrace()
	let cch = getline(".")[col(".")-1]
	let pch = getline(".")[col(".")-2]
	if cch == ')' && pch == "(" || cch == "]" && pch == "[" || cch == "}" && pch == "{" || cch == ">" && pch == "<" || (cch == '"' || cch == '`' || cch == "'")  && cch == pch "last condition is just for \`\'\"
"	if cch == '"' || cch == ')' || cch == '}' || cch == '`' || cch == ']' || cch == "'"
		return 1
	endif
   return 0
endfunction
function! PairedBraceExcludeQuotationMarks()
	let cch = getline(".")[col(".")-1]
	if cch == '"' || cch == "'" || cch == '`' 
		return 0
	endif
	return PairedBrace()
endfunction
"The next line change to new one, see line after it
"inoremap <expr> <CR> (PChUCr() == '{' && ChUCr() == '}' ? '<CR><ESC>O' : (PChUCr() == '[' && ChUCr() == ']' ? '<CR><ESC>O' : (PChUCr() == '<' && ChUCr() == '>' ? '<CR><ESC>O' : (IsC_MultiLineComment() == 1 ? '<CR><ESC>O' : (PChUCr() == '(' && ChUCr() == ')' ? '<CR><ESC>O' : '<CR>')))))
inoremap <expr> <CR> (PairedBrace() == 1 ? '<CR><ESC>O' : '<CR>')
"inoremap <expr> <TAB> (PairedBrace() == 1 ? '<RIGHT>' : '<TAB>')
inoremap <expr> <SPACE> (PairedBraceExcludeQuotationMarks() == 1 ? '<RIGHT>' : '<SPACE>')

function! EmptyBrace()
	let cch = getline(".")[col(".")-1]
	let pch = getline(".")[col(".")-2]
	if((cch == '"' && pch == cch) || (cch == "'" && cch == pch) || (cch == '`' && cch == pch)) 
		return 1
	elseif (cch == ')' && pch == '(') || (cch == '}' && pch == '{') || (cch == ']' && pch == '[') || (cch == ">" && pch == '<')
			return 1
	endif
   return 0
endfunction
inoremap <expr> <BS> (EmptyBrace() == 1 ? '<RIGHT><BS><BS>' : '<BS>')


