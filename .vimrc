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

set guifont=Comic\ Code\ Demo\ Regular:h12

" Plugins
" -----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'

call plug#end()

syntax off
