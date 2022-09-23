filetype plugin indent on
syntax enable

set wrap linebreak        " wrap long lines and break lines at words
set number				        " shows line numbers
set laststatus=2
set cursorline            " highlight current line
set ruler	  			        " shows cursor position in current line
set showcmd				        " shows partially typed commands
set nohlsearch				    " don't highlight search results
set noincsearch				    " don't jump to search results as search string is being typed

" ---------------------------------------------
if (has("termguicolors"))
  set termguicolors
endif

" OS detection
" ---------------------------------------------
let g:os_current = "Linux"

" ------------------------------------------------
" Plugins by Vim-Plug
" ------------------------------------------------
call plug#begin()

"""Global Plugins"""
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
" Plug 'honza/vim-snippets'

"""Theme Plugins"""
Plug 'whatyouhide/vim-gotham'
" Plug 'bluz71/vim-moonfly-colors'
" Plug 'wojciechkepka/vim-github-dark'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'shaunsingh/nord.nvim'
" Plug 'rakr/vim-one'

"""Filetype specific Plugins"""
Plug 'lervag/vimtex'
call plug#end()

colorscheme gotham

" ------------------------------------------------
" Plugin Configurations
" ------------------------------------------------
source ~/.config/nvim/personal/plugins/ultisnips.vim

" ------------------------------------------------
" Miscellaneous
" ------------------------------------------------

" disable automatic commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o  

" Return to Terminal in normal mode
tnoremap <Esc> <C-\><C-n>
