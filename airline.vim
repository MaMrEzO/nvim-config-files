"let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif



" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
"let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


"let g:airline_powerline_fonts = 1
""let g:airline_left_sep = ''
"let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
""let g:airline_right_sep = ''
"let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
""let g:airline_symbols.branch = ''
""let g:airline_symbols.readonly = ''
""let g:airline_symbols.linenr = ''

"let g:airline_detect_modified = 0 "if you're sticking the + in section_c you probably want to disable detection
"function! Init()
"  call airline#parts#define_raw('modified', '%{&modified ? "*" : ""}')
"  call airline#parts#define_accent('modified', 'red')
"  let g:airline_section_c = airline#section#create(['%f', 'modified'])
"endfunction
"autocmd VimEnter * call Init()

let g:airline_mode_map = {
			\ 'n' : '📄',
			\ 'i' : ' ',
			\ 'R' : '',
			\ 'v' : ' ',
			\ 'V' : ''  ,
			\ "\<C-v>": '',
			\ 'c' : '',
			\ 's' : '',
			\ 'S' : 'SL',
			\ "\<C-s>": 'SB',
			\ 't': '',
			\ '^t': '',
			\ '^T': '',
			\ 'C-T': '',
			\ '<C-t>': '',
			\ '<C-T>': '',
			\ 'TERMINAL': '',
			\ }

"* enable/disable coc integration >
let g:airline#extensions#coc#enabled = 1
"* change error symbol: >
let airline#extensions#coc#error_symbol = '🅔 '
""<
""change warning symbol: >
let airline#extensions#coc#warning_symbol = '🅦  '
""<
""* change error format: >
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
""<
""* change warning format: >
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

"%p%% %#__accent_bold#%{g:airline_symbols.linenr}:%l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr} %#__restore__#%#__accent_bold# %{g:airline_symbols.colnr}:%v%#__restore__#
"au User AirlineAfterInit  :let g:airline_section_z = airline#section#create(['%3p%% %L:%3v'])
au User AirlineAfterInit  :let g:airline_section_z = airline#section#create(['%{g:airline_symbols.linenr}:%l%#__restore__#%#__accent_bold#/%L%'])

function! s:update_git_status()
	  let g:airline_section_b = "%{get(g:,'coc_git_status','')}"
  endfunction

  let g:airline_section_b = "%{get(g:,'coc_git_status','')}"

  autocmd User CocGitStatusChange call s:update_git_status()
