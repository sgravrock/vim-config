if exists('g:loaded_zzz') || &compatible
  finish
else
  let g:loaded_zzz = 'yes'
endif

set background=dark
colorscheme paramount

set number

" vimwiki
let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'path': '~/Documents/notes/', 'syntax': 'markdown', 'ext': '.md'}]
