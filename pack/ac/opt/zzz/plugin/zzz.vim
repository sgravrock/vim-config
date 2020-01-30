if exists('g:loaded_zzz') || &compatible
  finish
else
  let g:loaded_zzz = 'yes'
endif

set background=dark
colorscheme paramount

let mapleader="\<Space>"

set number

nnoremap \\ :write<cr>
inoremap \\ <esc>:write<cr>

" vimwiki
let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'path': '~/Documents/notes/', 'syntax': 'markdown', 'ext': '.md'}]

" vim-sleuth
" https://github.com/tpope/vim-sleuth/pull/55
if get(g:, '_has_set_default_indent_settings', 0) == 0
  " Set the indenting level to 2 spaces for the following file types.
  " autocmd FileType typescript,javascript,jsx,tsx,css,html,ruby,elixir,kotlin,vim,plantuml
  "       \ setlocal expandtab tabstop=2 shiftwidth=2
  set expandtab
  set tabstop=2
  set shiftwidth=2
  let g:_has_set_default_indent_settings = 1
endif
