" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
"set cmdheight=2
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
	" Recently vim can merge signcolumn and number column into one
	set signcolumn=number
else
	set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
	inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <F12> :call <SID>show_documentation()<CR>

nnoremap <C-LeftRelease> :call <SID>show_documentation()<CR>


inoremap <C-P> <C-\><C-O>:call CocActionAsync('showSignatureHelp')<cr>
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)
nmap <F2> <Plug>(coc-rename)
nnoremap <M-O>2Q :CocCommand workspace.renameCurrentFile<CR>

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
	autocmd!
	" Setup formatexpr specified filetype(s).
	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	" Update signature help on jump placeholder.
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"Mapped with Telescope below
nmap <silent><nowait> gd <Plug>(coc-definition)
"nmap <silent><nowait> gy <Plug>(coc-type-definition)
"nmap <silent><nowait> gi <Plug>(coc-implementation)
"nmap <silent><nowait> gr <Plug>(coc-references)

"" Mappings for CoCList
"" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"Using CocFZF
"mappings

"CocFZFList
"nnoremap <silent> <space><space> :<C-u>CocFzfList<CR>
"nnoremap <silent> <space>a       :<C-u>CocFzfList diagnostics<CR>
"nnoremap <silent> <space>b       :<C-u>CocFzfList diagnostics --current-buf<CR>
"nnoremap <silent> <space>c       :<C-u>CocFzfList commands<CR>
""nnoremap <silent> <space>e       :<C-u>CocFzfList extensions<CR>
""nnoremap <silent> <space>l       :<C-u>CocFzfList location<CR>
"nnoremap <silent> <space>o       :<C-u>CocFzfList outline<CR>
"nnoremap <silent> <space>s       :<C-u>CocFzfList symbols<CR>
"nnoremap <silent> <space>p       :<C-u>CocFzfListResume<CR>

"nnoremap  <silent><nowait> <space><space> :<C-u>Telescope coc  <CR>
nnoremap  <silent><nowait> <space>a       :<C-u>Telescope coc workspace_diagnostics theme=get_dropdown<CR>
nnoremap  <silent><nowait> <space>b       :<C-u>Telescope coc diagnostics theme=get_dropdown<CR>
nnoremap  <silent><nowait> <space>c       :<C-u>Telescope coc commands theme=get_dropdown<CR>
"nnoremap <silent><nowait> <space>e       :<C-u>Telescope coc extensions<CR>
"nnoremap <silent><nowait> <space>l       :<C-u>Telescope coc location<CR>
nnoremap  <silent><nowait> <space>o       :<C-u>Telescope coc document_symbols theme=get_dropdown<CR>
nnoremap  <silent><nowait> <space>s       :<C-u>Telescope coc workspace_symbols  theme=get_dropdown<CR>
"nnoremap  <silent><nowait> <space>p       :<C-u>Telescope coc Resume<CR>
" GoTo code navigation.

"nmap <silent><nowait> gd :<C-u>Telescope coc definitions theme=get_dropdown<CR>
nmap <silent><nowait> gy :<C-u>Telescope coc declarations theme=get_dropdown<CR>
nmap <silent><nowait> gi :<C-u>Telescope coc implementations theme=get_dropdown<CR>
nmap <silent><nowait> gr :<C-u>Telescope coc references theme=get_dropdown<CR>
          
nmap \| <Plug>(coc-cursors-position)

" Experimental feature (preview definition): gp, `<leader>K`, or <Shift-F12>:
" Peek into the definition in a floating window.
" TODO: If there are 2+ definitions, it does not work with floating windows (coc.nvim problem)
command! -nargs=0 PreviewDefinition :call CocActionAsync('jumpDefinition', ':OpenAsPreview')
command! -nargs=* OpenAsPreview :call s:open_as_preview("<args>")
function! s:open_as_preview(callstr)
	" e.g. the string should look like: +call cursor(<line>,<col>) <filename>
	let m = matchlist(a:callstr, '^+call cursor(\(\d\+\),\s*\(\d\+\))\s\+\(.*\)')
	if len(m) < 4   " TODO: more robust error handling
		echohl WarningMsg | echom "ERROR: Invalid callstr format" | echohl None
		return
	endif
	let linenr = m[1]
	let filename = expand(m[3])
	call quickui#preview#open(filename, {
				\ 'cursor': linenr,
				\ 'number' : 1,
				\ 'persist': 0,
				\ })
endfunction
" <F24> = <Shift-F12>
nmap <F24>         :<C-U>PreviewDefinition<CR>
nmap <leader>K     :<C-U>PreviewDefinition<CR>
nmap <silent> gp   :<C-U>PreviewDefinition<CR>
