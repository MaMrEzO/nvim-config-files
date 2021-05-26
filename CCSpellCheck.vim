" Use CCSpellCheck.vim. (1 / 0) (default 1)
let g:CCSpellCheckEnable = 1

" Setting for start checking min length of character. (default 4)
let g:CCSpellCheckMinCharacterLength = 4

" Setting for max suggest words list length. (default 50)
let g:CCSpellCheckMaxSuggestWords = 50


" Override highlight group name. (default 'CCSpellBad')
let g:CCSpellCheckMatchGroupName = 'CCSpellBad'

" Override highlight setting.
highlight CCSpellBad cterm=reverse ctermfg=magenta gui=reverse guifg=orange
