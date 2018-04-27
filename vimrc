" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Vundle and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.

set nocompatible               " be iMproved
filetype off                   " required!

call plug#begin('~/.vim/plugged')
"
" Colorschemes
"
Plug 'tpope/vim-vividchalk'
" Plug 'chriskempson/base16-vim'
" Plug 'molokai'
" Plug 'altercation/vim-colors-solarized'
" Plug 'wgibbs/vim-irblack'
Plug 'chriskempson/vim-tomorrow-theme'
" Plug 'candycode.vim'
" Plug 'Colour-Sampler-Pack'
" Plug 'flazz/vim-colorschemes'

"
" Ruby / Rails
"
" Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
" Plug 'ecomba/vim-ruby-refactoring'
" Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'jgdavey/vim-blockle'
" Plug 'tpope/vim-rbenv'
" Plug 'tpope/vim-rake'

"
" General Editing
"
" Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
" Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'
" Plug 'kana/vim-textobj-user'
" Plug 'Julian/vim-textobj-variable-segment'
" Plug 'kana/vim-textobj-line'
" Plug 'thinca/vim-textobj-between'
Plug 'tpope/vim-unimpaired'
" Plug 'sjl/gundo.vim'
" Plug 'godlygeek/tabular'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
" Plug 'nertzy/j-split'
" Plug 'matt-royal/diffthese'
"Plug 'camelcasemotion'
" Plug 'nertzy/edit-plus'
" Plug 'brysgo/quickfixfix'
" Plug 'Lokaltog/vim-easymotion'
" Plug 'regreplop.vim'
" Plug 'Peeja/insert_mode_background_color'
" Plug 'vim-scripts/L9'
" Plug 'Peeja/vim-cdo'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
" Plug 'honza/vim-snippets'
" Plug 'YankRing.vim'
" Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'
" Plug 'tpope/vim-projectionist'
" Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-sensible'

"
" Window Management
"
" Plug 'ZoomWin'

"
" Searching
"
" Plug 'mileszs/ack.vim'
Plug 'epmatsw/ag.vim'
" Plug 'tpope/vim-abolish'
" Plug 'henrik/vim-qargs'
Plug 'ctrlpvim/ctrlp.vim'

"
" Navigation
"

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'majutsushi/tagbar'
Plug 'tpope/vim-vinegar'

"
" Languages
"
Plug 'vim-ruby/vim-ruby'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
" Plug 'slim-template/vim-slim'
" Plug 'nono/vim-handlebars'
" Plug 'kchmck/vim-coffee-script'
" Plug 'tpope/vim-haml'
" Plug 'tpope/vim-cucumber'
" Plug 'quentindecock/vim-cucumber-align-pipes'
" Plug 'juvenn/mustache.vim'
Plug 'fatih/vim-go'
" Plug 'rosstimson/scala-vim-support'
" Plug 'guns/vim-clojure-static'
" Plug 'chrisbra/csv.vim'
" Plug 'elzr/vim-json'
" Plug 'briancollins/vim-jst'
" Plug 'digitaltoad/vim-jade'
" Plug 'mxw/vim-jsx'
" Plug 'lambdatoast/elm.vim'
" Plug 'leafgarland/typescript-vim'

"
" Development Tool Integration
"
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Plug 'pivotal/tmux-config'
Plug 'tpope/vim-dispatch'
" Plug 'carlobaldassi/ConqueTerm'
" Plug 'sjl/vitality.vim'
" Plug 'brysgo/test_server'
" Plug 'mdelillo/vim-simple-bdd'
Plug 'janko-m/vim-test'

" Initialize plugin system
call plug#end()

filetype plugin indent on

syntax on

runtime! init/**.vim

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
