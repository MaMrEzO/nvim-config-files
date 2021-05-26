function! EscapePairs()
	let ch = getline(".")[col(".")-1]
	if ch == '"' || ch == ')' || ch == '}' || ch == '`' || ch == ']'  
		call feedkeys("\<RIGHT>")
	endif
endfunction

"inoremap <silent> <TAB> <C-O>:call EscapePairs()<CR>
