call pathogen#infect()
filetype plugin indent on

colorscheme greens

set encoding=iso-8859-1

set nocompatible
set backspace=eol,start,indent
syn on

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set laststatus=2
set statusline=%t\ %{fugitive#statusline()};\ %y%=\ [%c,%l]\ %P

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
 
" Use different colorscheme for vimdiff
if &diff
  colorscheme greens
endif

nnoremap <F5> :GundoToggle<CR>

