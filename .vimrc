source $VIMRUNTIME/defaults.vim

" So it copies to our clipboard
set clipboard=unnamedplus

set nocompatible

filetype plugin on

filetype indent on

" Add numbers 
set number
set relativenumber

" Highlight current line
set cursorline

" Highlight cursor line underneath the cursor
" set cursorcolumn

"""""""
" set shift width to 4 space
set shiftwidth=4

" set tab width to 4 space
set tabstop=4

"
set expandtab

" we dont need backup files 
set nobackup
set nowrap
set showcmd
set showmode
set showmatch
set hlsearch
set wildmenu

set wildmode=list:longest

" Disable Copilot
" Copilot disable

" Shell make stuff
autocmd FileType rust setlocal makeprg=cargo\ build\ --message-format=short
autocmd FileType rust setlocal errorformat=%f:%l:%c:\ %m 

" Custom stuff
" Define the custom command with a parameter for the binary name
command! -nargs=1 Rbin call RunCargoBin(<f-args>)

" Define the function to run the Cargo command
function! RunCargoBin(bin_name)
  let command = 'cargo run --bin ' . a:bin_name
  execute 'term ' . command
endfunction

set guifont=ComicMono\ Nerd\ Font\ Regular:h12

" Plugins
" -----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox' " Gruvbox Theme
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'ntk148v/komau.vim' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/seoul256.vim'

call plug#end()

syntax on

" Colorscheme
colo seoul256
" colorscheme gruvbox

set background=dark

" Komau Colorscheme Settings
let g:komau_bold=0
let g:komau_italic=0

" Gruvbox Colorscheme Settings
let g:gruvbox_contrast_dark = "hard"


" Coc Config
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> [g <Plug>(coc-diagnostic-prev)
nnoremap <silent> ]g <Plug>(coc-diagnostic-next)
