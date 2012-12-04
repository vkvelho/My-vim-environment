call pathogen#infect()
syntax on
filetype plugin indent on

set encoding=utf-8

set nocompatible
set backspace=eol,start,indent

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set laststatus=2

if &term =~ "xterm"
 set t_Co=256
 if has("terminfo")
   let &t_Sf=nr2char(27).'[3%p1%dm'
   let &t_Sb=nr2char(27).'[4%p1%dm'
 else
   let &t_Sf=nr2char(27).'[3%dm'
   let &t_Sb=nr2char(27).'[4%dm'
 endif
endif

colorscheme ir_black
" Use different colorscheme for vimdiff
if &diff
  colorscheme peaksea
endif

set guioptions-=T "remove toolbar
set guifont=Monaco:h9:cANSI

