" Set this in your vimrc file to disabling highlighting
let g:ale_set_highlights = 0

let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '

" run linters only when I save file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" if you don't want linters to run on opening a file
"let g:ale_lint_on_enter = 0
