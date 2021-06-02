" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file defines an office-wide vim configuration. Since we have a variety
" of people in the office, including guests, it's important for this config
" to be as welcoming as possible. Therefore, please keep it minimal.
"
" In particular, before adding something here, make sure that *all* of the
" following are true:
"
" * Whatever you're adding won't hamper a vim user who doesn't know about it.
"   So, e.g. something that adds a new key binding to do something is probably
"   fine, but a plugin that adds expand/collapse to JSON files and starts out
"   collapsed is problematic.
" * Any color schemes have good contrast against both white and black
"   backgrounds.
" * GUI copy (drag with the mouse and cmd-c) still work in both terminal vim
"   and MacVim.
"
" A change that doesn't meet all of those criterea doesn't go here because it
" probably breaks vim for others. Instead of adding it here, put it in the
" machine-specific ~/.vimrc.local. (If it's a shared machine, please check with
" the rest of your team first.) Or, better yet, see if it can be handled with
" project-specific settings like a .editorconfig file.

" Note: To install a plugin, put it in pack/foo/start/<plugin name>.
" See <https://shapeshed.com/vim-packages/> for details.

set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'epmatsw/ag.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

call plug#end()

filetype plugin indent on

syntax on

set ignorecase
set smartcase
set hlsearch

" Wrap Git commit messages to 72 characters
filetype plugin on
set fo+=t
au FileType gitcommit setlocal tw=72

" Sensible indent settings:
" * Dumb autoindent (match previous line)
" * Tab inserts two spaces (ugh, but it's pretty much a de facto standard)
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set number
set nowrap
set showmatch
set splitright               " add new windows towards the right
set splitbelow               " ... and bottom
set wildmode=list:longest
set scrolloff=3              " scroll when cursor is 3 lines from edge
set laststatus=2             " always show statusline

set incsearch
set autoread

" MacVim defaults to very small fonts with a dark, very low contrast
" color scheme.Set to something more accessible.
" Note: To see all available schemes, type :colorscheme <ctrl-d> in
" command mode.
if has("gui_running")
  colorscheme slate
  set guifont=Menlo:h14
	set mouse=a
else
  set mouse=r
endif

let mapleader = ","
let g:ctrlp_working_path_mode = 'ra'

map Y y$
map <leader>v :vsp<CR>

nmap <C-p> :CtrlP<CR>
map \           :NERDTreeToggle<CR>
map \|          :NERDTreeFind<CR>

" Find current word in command mode
function! AgGrep()
  let command = "ag ".expand("<cword>")
  cexpr system(command)
  cw
endfunction

function! AgVisual()
  normal gv"xy
  let command = "ag ".@x
  cexpr system(command)
  cw
endfunction

" AckGrep current word
map <leader>a :call AgGrep()<CR>
" AckVisual current selection
vmap <leader>a :call AgVisual()<CR>


nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

"let active = systemlist("git config git-together.active")
"let active = len(active) > 0 ? active[0] : ""
"let active = split(active, "+")
"for author in active
"  let opt = $HOME . "/.vim/pack/" . author . "/opt"
"  let packages = split(globpath(opt, "*"), "\n")
"  for path in packages
"    let package = fnamemodify(path, ":t")
"    execute "packadd! " . package
"  endfor
"endfor

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

