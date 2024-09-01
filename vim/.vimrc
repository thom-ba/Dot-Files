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

" Custom stuff Commands
let mapleader = "\<Space>"

" Define the custom command with a parameter for the binary name
command! -nargs=1 Rbin call RunCargoBin(<f-args>)

" CamelCase to snake_case
command! CamelToSnake :s/\([a-z]\)\([A-Z]\)/\1_\l\2/g

" Map <leader>b to go to the previous buffer
nnoremap <leader>b :bprevious<CR>

" Map <leader>n to go to the next buffer
nnoremap <leader>n :bnext<CR>

" Map <leader>f to FZF
nnoremap <leader>f :FZF<CR>

nnoremap <space>e <Cmd>NERDTreeToggle<CR>


" Coc Config
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> [g <Plug>(coc-diagnostic-prev)
nnoremap <silent> ]g <Plug>(coc-diagnostic-next)


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
Plug 'preservim/nerdtree'
Plug 'junegunn/seoul256.vim'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rhysd/vim-clang-format'
 " Plug 'lstwn/broot.vim'

call plug#end()

syntax on

" colorscheme gruvbox
set background=dark

" Komau Colorscheme Settings
let g:komau_bold=0
let g:komau_italic=0

" Gruvbox Colorscheme Settings
let g:gruvbox_contrast_dark = "hard"

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Colorscheme
colo alduin

" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
  let l:raw_color = trim(a:color, '#')

  let l:red = str2nr(substitute(l:raw_color, '.{0}(.{2})', '1', 'g'), 16)
  let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
  let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

  let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

  return l:brightness > 155
endfunction

" Clang Format
let g:clang_format#detect_style_file = 1

" Tmux and Broot
" STILL working on it to work :/
"nnoremap <space>e :silent !tmux split-window -h -p 10 \; send-keys 'broot' Enter<CR>
"
"
"let g:broot_replace_netrw = 1
"let g:loaded_netrwPlugin = 1

" highlight Normal guibg=NONE ctermbg=NONE
hi Normal guibg=NONE ctermbg=NONE
