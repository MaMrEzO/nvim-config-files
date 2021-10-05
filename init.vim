let g:ale_cpp_gcc_options = '-mmcu=atmega32'
source ~/.config/nvim/plugins.vim

"Theme and theme configs:
source ~/.config/nvim/appreances.vim

" TODO test
" HACK test
" WARN test
" PERF test
" NOTE test
lua << EOF
require('telescope').load_extension('coc')

require('nvim-treesitter.configs').setup {
  ensure_installed = "rust", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {}, -- List of parsers to ignore installing

  highlight = {
    enable = true,              -- false will disable the whole extension
    --disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
require("todo-comments").setup {
	-- TODO:
	-- HACK:
	-- WARN:
	-- PERF:
	-- NOTE:
	signs = true, -- show icons in the signs column
	sign_priority = 10, -- sign priority
	-- keywords recognized as todo comments
	keywords = {
		FIX = {
			icon = " ", -- icon used for the sign, and in search results
			color = "error", -- can be a hex color, or a named color (see below)
			alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
			-- signs = false, -- configure signs for some keywords individually
			},
		TODO = { icon = " ", color = "info" },
		HACK = { icon = " ", color = "warning" },
		WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
		PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
		NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
		},
	merge_keywords = true, -- when true, custom keywords will be merged with the defaults
	-- highlighting of the line containing the todo comment
	-- * before: highlights before the keyword (typically comment characters)
	-- * keyword: highlights of the keyword
	-- * after: highlights after the keyword (todo text)
	highlight = {
		before = "", -- "fg" or "bg" or empty
		keyword = "wide", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
		after = "fg", -- "fg" or "bg" or empty
		pattern = [[.*<(KEYWORDS)\s*:]], -- pattern used for highlightng (vim regex)
		comments_only = true, -- uses treesitter to match keywords in comments only
		max_line_len = 400, -- ignore lines longer than this
		exclude = {}, -- list of file types to exclude highlighting
		},
	-- list of named colors where we try to extract the guifg from the
	-- list of hilight groups or use the hex color if hl not found as a fallback
	colors = {
		error = { "LspDiagnosticsDefaultError", "ErrorMsg", "#DC2626" },
		warning = { "LspDiagnosticsDefaultWarning", "WarningMsg", "#FBBF24" },
		info = { "LspDiagnosticsDefaultInformation", "#2563EB" },
		hint = { "LspDiagnosticsDefaultHint", "#10B981" },
		default = { "Identifier", "#7C3AED" },
		},
	search = {
		command = "rg",
		args = {
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			},
		-- regex that will be used to match keywords.
		-- don't replace the (KEYWORDS) placeholder pattern = [[\b(KEYWORDS):]], -- ripgrep regex -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon.  You'll likely get false positives
		},
	}
EOF

"Svelte
let g:vim_svelte_plugin_use_typescript = 1
let g:vim_svelte_plugin_use_scss = 1
let g:vim_svelte_plugin_load_full_syntax = 1
let g:vim_svelte_plugin_use_foldexpr = 1

"MaMrEzO
set mouse=a

"Enable folding
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
"set foldmethod=syntax
""set foldmethod=manual
""set foldmethod=indent   
set foldnestmax=1000
set foldlevel=1000
set nofoldenable

set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar

"source ~/.config/nvim/nvim-lsp.vim

"search tasks
" List occurrences for search
let g:searchtasks_list=["TODO", "FIXME", "WARN", "BUG"]

"Sql dbext
source ~/.config/nvim/dbext.vim

"source ~/.config/nvim/lightline.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/coc-nvim.vim
source ~/.config/nvim/coc-snippests.vim
source ~/.config/nvim/coc-explorer.vim
source ~/.config/nvim/fzf.vim
"source ~/.config/nvim/nerdtree.vim
"source ~/.config/nvim/vimspector.vim
source ~/.config/nvim/PopupBuffer.vim
"source ~/.config/nvim/ale.vim

let g:vim_jsx_pretty_template_tags=['html', 'jsx']
let g:vim_jsx_pretty_colorful_config = 1
let g:yats_host_keyword = 1

source ~/.config/nvim/indentline.vim

source ~/.config/nvim/mapping.vim
source ~/.config/nvim/comments.vim
source ~/.config/nvim/clipboard.vim
source ~/.config/nvim/pairingBreace.vim
source ~/.config/nvim/CCSpellCheck.vim
