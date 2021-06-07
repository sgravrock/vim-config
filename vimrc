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
set ai
set ts=2
set sw=2
set expandtab

" MacVim defaults to very small fonts with a dark, very low contrast
" color scheme.Set to something more accessible.
" Note: To see all available schemes, type :colorscheme <ctrl-d> in
" command mode.
if has("gui_running")
  colorscheme slate
  set guifont=Menlo:h14
  " This (and most other) color schemes use an extremly low contrast color
  " for comments, rendering them almost unreadable. Disable.
  syntax on
  hi clear Comment
endif

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

