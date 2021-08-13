"Diasbale ALE to use LSP before plugins load
let g:ale_disable_lsp = 1
call plug#begin('~/.local/share/nvim/plugged')

"Not work in completion manner
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"LSP :)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neovim/nvim-lspconfig'


"airline cause freeze the vim
"Plug 'itchyny/lightline.vim'

"Plug 'preservim/nerdtree'

"Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


"JSON5 synHighlight
Plug 'gutenye/json5.vim'

"Welcome page but make trubles
"Plug 'mhinz/vim-startify'

"Task list????! NOT WORKS as expcted as C-CR not mapped in terminal
"Plug 'vuciv/vim-bujo'

"Plug 'junegunn/fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}


"Plug 'puremourning/vimspector'
"Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"Plug 'kamykn/CCSpellCheck.vim'
Plug 'danro/rename.vim' 
"Plug 'dense-analysis/ale'
"Not work for jsx files
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
"Open files with line number=> main.go:12
"Plug 'wsdjeg/vim-fetch'
Plug 'cespare/vim-toml'
"C++ hints color_coded unavailable: nvim isn't yet supported
"Plug 'jeaye/color_coded'
Plug 'dart-lang/dart-vim-plugin'
Plug 'tiagofumo/dart-vim-flutter-layout'

"Plug 'Yggdroot/indentLine'
"Plug 'lukas-reineke/indent-blankline.nvim'

"Syntax stuff
"Theme
"Plug 'zenorocha/dracula-theme', { 'name': 'dracula' }
Plug 'dracula/vim', { 'name': 'dracula' }
"Plug 'doums/darcula'

Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
"Todo and tasks
"Plug 'gilsondev/searchtasks.vim'
"Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'fannheyward/telescope-coc.nvim'

"Git plugins ~ combined with coc-git
Plug 'tpope/vim-fugitive'

"Sql--
"Plug 'vim-scripts/dbext.vim'
Plug 'tpope/vim-dadbod'

"Svelte
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'leafgarland/typescript-vim'
call plug#end()
