set timeoutlen=500

map <C-LeftMouse> <NOP>
map <C-MiddleMouse> <NOP>
map <C-RightMouse> <NOP>

"Next uppercase letter, useful in CammelCase words
"nmap W /[A-Z]<CR>

"Delete key cause delete a character forward but <BS> do not
nnoremap <BS> X

" Insert mode to select mode
"Insert mode to Select mode and select word
inoremap <C-S-Left> <ESC>vb<C-G>
inoremap <C-S-RIGHT> <C-\><C-O>ve<C-G>
"snoremap <C-S-RIGHT> <C-\><C-O>e
inoremap <S-Home> <C-O>gh<HOME>
inoremap <S-END> <C-O>gh<END>
inoremap <S-LEFT> <ESC>gh
inoremap <M-Left> <C-O>^
inoremap <M-Right> <C-O>$
inoremap <M-Up> <PageUp>
inoremap <M-Down> <PageDown>
inoremap <M-S-Left> <C-O>gh<Home>
inoremap <M-S-Right> <C-O>gh<End>

nnoremap <M-Left> ^
nnoremap <M-Right> $
nnoremap <M-Up> <PageUp>
nnoremap <M-Down> <PageDown>
xnoremap <M-Left> ^
xnoremap <M-Right> $
xnoremap <M-Up> <PageUp>
xnoremap <M-Down> <PageDown>

snoremap <S-LEFT> <LEFT>
snoremap <M-Left> <HOME>
snoremap <M-Right> <End>

inoremap <S-RIGHT> <C-\><C-O>gh
snoremap <S-RIGHT> <RIGHT>

inoremap <S-UP> <C-O>gh<UP>
inoremap <S-DOWN> <C-O>gh<DOWN>
"Select mode line navigation, Otherwise these will page-up and page-down
snoremap <S-UP> <UP>
snoremap <S-DOWN> <DOWN>

snoremap <Left> <ESC>
snoremap <Right> <ESC>
snoremap <Up> <ESC>
snoremap <Down> <ESC>

"Ignore selection and revert cursor to begining of selection
snoremap <ESC> <C-G>o<ESC>
snoremap <C-I> <ESC>i
snoremap <C-A> <ESC>a

"nnoremap <C-S-W> bve<C-G>

"Delete words in insert mode
"inoremap <C-W> <C-\><C-O>dw
"inoremap <C-B> <C-\><C-O>db
"inoremap <C-E> <C-\><C-O>de

"Shift+Enter Ctrl+Enter not works, see next lines after...
noremap <S-CR> <C-\><C-O>O
"snoremap <C-CR> <C-\><C-O>o
"Use C-Up C-Down to insert new line Above or below of the current line
inoremap <C-DOWN> <C-\><C-O>o
inoremap <C-UP> <C-\><C-O>O
inoremap <M-CR> <C-\><C-o>O
inoremap ^^M <C-\><C-O>o
nnoremap <C-Up> O
nnoremap <C-Down> o


"Insert mode navigation
inoremap <C-Left> <C-\><C-O>b
inoremap <C-Right> <C-\><C-O>w

nnoremap <S-LEFT> gh<LEFT>
nnoremap <S-RIGHT> gh<RIGHT>
nnoremap <S-End> gh<End>
nnoremap <S-Home> gh<Home>
nnoremap <M-S-Left> gh<Home>
nnoremap <M-S-Right> gh<End>

"Exit search mode :
nnoremap <esc> :noh<CR>

"Switching buffers
"nnoremap <LEADER>bf :buffers<CR>:buffer
nnoremap <LEADER>b :Buffers<CR>
"Close opened buffers
nnoremap <LEADER>bd :buffers<CR>:bd 

"Window switch
"nnoremap <M-Left> :wincmd h<CR>
"nnoremap <M-Right> :wincmd l<CR>
"nnoremap <M-UP> :wincmd k<CR>
"nnoremap <M-DOWN> :wincmd j<CR>
tnoremap <M-C-Left> <C-\><C-N><C-w>h
tnoremap <M-C-Down> <C-\><C-N><C-w>j
tnoremap <M-C-Up> <C-\><C-N><C-w>k
tnoremap <M-C-Right> <C-\><C-N><C-w>l
inoremap <M-C-Left> <C-\><C-N><C-w>h
inoremap <M-C-Down> <C-\><C-N><C-w>j
inoremap <M-C-Up> <C-\><C-N><C-w>k
inoremap <M-C-Right> <C-\><C-N><C-w>l
nnoremap <M-C-Left> <C-w>h
nnoremap <M-C-Down> <C-w>j
nnoremap <M-C-Up> <C-w>k
nnoremap <M-C-Right> <C-w>l


vnoremap <TAB> >gv
vnoremap <S-TAB> <gv

vnoremap <M-Left> <Home>
vnoremap <M-Right> <End>


" CTRL-Tab is next tab
"Sourround with "`'(){}[] in insert+select mode
"noremap <C-Tab> :<C-U>tabnext<CR>
"inoremap <C-Tab> <C-\><C-N>:tabnext<CR>
"cnoremap <C-Tab> <C-C>:tabnext<CR>
"" CTRL-SHIFT-Tab is previous tab
"noremap <C-S-Tab> :<C-U>tabprevious<CR>
"inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
"inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
"inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
"inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
"cnoremap <C-S-Tab> <C-C>:tabprevious<CR>

"inoremap <C-Bs> <C-\><C-N>
"inoremap <C-Right> <ESC>wi
"Test text to test delete!
inoremap <silent> <C-Y> <C-\><C-O>"_dd
inoremap <C-Del> <C-O>vwh"_d

"Delete word backward, there is two situation, one cursor is on eol and not
"so this line will be expr
"inoremap <M-BS> <C-O>h<C-O>vb"_d
"To this works on Konsole, modify Backspace+Ctrl to \E\x7f
inoremap <expr> <M-BS> (col(".") >= col("$") - 1? '<C-O>vb"_d' : '<C-O>h<C-O>vb"_d')

"Preventig deleted  to be yanked
function! CurrectInsert()
	if col(".") >= col("$") - 1
		call feedkeys('a')	
	else 
		call feedkeys('i')
	endif
endfunction
"Test text to delete
vnoremap x "_d
nnoremap x v"_d
vnoremap <silent> c "_d:call CurrectInsert()<CR>
"nnoremap cc "_ddO
nnoremap <silent> cc $v^"_d:call CurrectInsert()<CR>
nnoremap <silent> ce ve"_d:call CurrectInsert()<CR>
nnoremap <silent> cb vb"_d:call CurrectInsert()<CR>
nnoremap <silent> cw vw"_d:call CurrectInsert()<CR>
nnoremap <silent> ciw viw"_d:call CurrectInsert()<CR>
nnoremap <silent> ciW viW"_d:call CurrectInsert()<CR>
nnoremap <silent> ci} vi}"_d:call CurrectInsert()<CR>
nnoremap <silent> ci) vi)"_d:call CurrectInsert()<CR>
nnoremap <silent> ci] vi]"_d:call CurrectInsert()<CR>
nnoremap <silent> ci> vi>"_d:call CurrectInsert()<CR>
nnoremap <silent> ci" vi""_d:call CurrectInsert()<CR>
nnoremap <silent> ci' vi'"_d:call CurrectInsert()<CR>
nnoremap <silent> ci` vi`"_d:call CurrectInsert()<CR>
nnoremap <silent> caw vaw"_d:call CurrectInsert()<CR>
nnoremap <silent> caW vaW"_d:call CurrectInsert()<CR>
nnoremap <silent> ca} va}"_di
nnoremap <silent> ca) va)"_di
nnoremap <silent> ca] va]"_di
nnoremap <silent> ca> va>"_di
nnoremap <silent> ca" va""_di
nnoremap <silent> ca' va'"_di
nnoremap <silent> ca` va`"_di
nnoremap <silent> c$ v$h"_d:call CurrectInsert()<CR>
nnoremap <silent> dd "_dd
nnoremap <silent> db hvb"_d
nnoremap <silent> de ve"_d
nnoremap <silent> dw vwh"_d
nnoremap <silent> diw viw"_d
nnoremap <silent> diW viW"_d
nnoremap <Del> "_d
xnoremap <Del> "_d
nnoremap <S-Del> viw"_d
snoremap <BS> <C-G>"_di
snoremap <DEL> <C-G>"_di

"noremap <LEADER>l :Explore<CR>
nnoremap <LEADER>o :NERDTreeToggle<CR>
"nnoremap <LEADER>l :FZF<CR>
"autocmd FileType dart nnoremap <LEADER>l :FZF ./lib<CR>
"autocmd FileType php nnoremap <LEADER>l :FZF ./app<CR>
"autocmd FileType rust nnoremap <LEADER>l :FZF ./src<CR>
nnoremap <LEADER><LEADER> :Telescope find_files <CR>
nnoremap <LEADER>l :Telescope find_files theme=get_dropdown<CR>

nnoremap <LEADER>t :SearchTasks<CR>
autocmd FileType dart nnoremap <LEADER>t :SearchTasks ./lib/*.dart<CR>
autocmd FileType php nnoremap <LEADER>t :SearchTasks ./app/*.php<CR>
autocmd FileType rust nnoremap <LEADER>t :SearchTasks ./src/*.rs<CR>

"Move line Up/Down
nnoremap <M-Down> V"kd"kp
nnoremap <M-UP> V"kdk"kP
inoremap <M-Down> <C-O>V"kd<C-O>"kp
inoremap <M-Up> <C-O>V"kd<C-O>k<C-O>"kP
nnoremap <C-D> V"ky"kp

xnoremap <C-D> yP

"Terminal exit from insert mode
tnoremap <Esc> <C-\><C-n>
"autocmd WinEnter * if &buftype=='terminal'|:startinsert|endif

"fzf EXIT
"autocmd Filetype fzf call SetFzFMapping()
"function SetFzFMapping()
"    inoremap <ESC> <ESC>:q<CR>
"	 nnoremap <ESC> :q<CR>
"endfunction
if has("nvim")
  au TermOpen * tnoremap <Esc> <c-\><c-n>
  au FileType fzf tunmap <Esc>
endif
"Clipboard

inoremap <C-D> <C-O>viw<C-G>
inoremap <C-C> <C-O>yiw

snoremap <C-C> <C-G>y
snoremap <C-X> <C-G>di
snoremap <C-V> <C-G>"_dhpi
"Paste in insert mode
"inoremap <C-V> <C-O>P will fail on EOL
"inoremap <expr> <C-V> (col(".") >= col("$") ?  '<C-O>p' : '<C-O>P')
inoremap <silent><nowait> <C-v> <ESC>:set paste<CR>a<C-R>+<ESC>:set nopaste<CR>a
"-----inoremap <C-V> <C-O>:echo col(".")<CR>
"-----inoremap <C-X> <C-O>:echo col("$")<CR>
"-----inoremap <C-B> <C-O>:echo getpos()<CR>
"command line paste!
cmap <C-v> <C-R>+
"Copy current word
nnoremap <LEADER>w yiw
noremap <LEADER>W ciw<c-r>*<ESC>
"Copy current line
nnoremap <LEADER>v Vy

"Replace current word with clipboard content
nnoremap <M-p> viw"_dP
"Replace selected range with ClipBoard
vnoremap p "_dP

function! FillSearchCommand()
	let word = expand('<cword>')
	:1,$s/word/word/g
endfunction

"Search and replace
nnoremap <F3> /
nnoremap <M-F3> /\c
nnoremap <F4> viw"ky:1,$s/<C-R>k/<C-R>k/g<Left><Left>
"nnoremap <F4> viwy:1,$s/expand('<cword>')/expand('<cword>')/g<Left><Left>
"nnoremap <F4> :1,$
xnoremap <F5> y:1,$s/<C-R>0/<C-R>0/g<Left><Left>


"Undo Redo in insert mode
inoremap <C-Z> <C-O>u
snoremap <C-Z> <C-O>u

"Save in all modes
nmap <C-S> :wa<CR>
vmap <C-S> <ESC>:wagv
inoremap <C-S> <C-O>:w<CR>


"Improve Goto Line, Goto line and put it center of screen and put cursor under
"first non-blank in the line
nnoremap G Gz.

set switchbuf=useopen,split

function! DropFile()
	let cw = split(expand("<cWORD>"), ":")
	let file = cw[0]
	let line = cw[1]
	:try
	:execute ":sb " . file
	:execute ":normal" line . "G"
	:catch /.*/
	:execute ":10wincmd h"
	:execute ":e " . file
	:execute ":normal" line . "G"
	:endt
endfunction
" sheng/schUI_SystemSchemeEditor.go:55
nnoremap <F6>  :call DropFile()<CR>

"Comment in clike syntax files
vnoremap <LEADER>/ ^<c-q>I//<esc><esc>
nnoremap <LEADER>/ ^i//<esc>

"Sort block lines
nnoremap <LEADER>s} vi}:sort<cr>
nnoremap <LEADER>s) vi):sort<cr>
nnoremap <LEADER>s] vi]:sort<cr>

"Flutter command...
nnoremap <LEADER>fd :CocCommand flutter.devices<CR>
nnoremap <LEADER>fr :CocCommand flutter.run<CR>
nnoremap <LEADER>fq :CocCommand flutter.dev.quit<CR>
nnoremap <LEADER>fa :CocCommand flutter.run<CR>
nnoremap <LEADER>fw :wa<CR>:CocRestart<CR><CR>

"Git commands!
nnoremap <LEADER>gw :Gwrite<CR>
nnoremap <LEADER>gr :Gread<CR>
nnoremap <LEADER>gaa :Git add .<CR>
nnoremap <LEADER>gp :Git push<CR>
nnoremap <LEADER>gc :Gcommit<CR>
