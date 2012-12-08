call pathogen#infect()
filetype plugin indent on

set encoding=utf-8

"Stuff that should be default:
syntax on
set nocompatible
set backspace=eol,start,indent

"Indenting
set expandtab "use spaces, not tabs
set shiftwidth=2
set softtabstop=2
set tabstop=2

set number "line numbers

set laststatus=2
set statusline=%t\ %{fugitive#statusline()};\ %y%=\ [%c,%l]\ %P

colorscheme solarized 
if has("gui_running")
  set guifont=Monaco:h9:cANSI
  set guioptions=ac
  set background=light
else
  set background=dark
endif

" Use different colorscheme for vimdiff
if &diff
  colorscheme peaksea
endif

"On testing:
set shiftround "round the indention nicely with other indents, some say.
