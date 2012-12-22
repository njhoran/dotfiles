syntax on
filetype indent plugin on
colorscheme xoria256
" let g:pydiction_location = '~/.vim/pydiction/complete-dict'
set t_Co=256
set modeline
set nu
set nocompatible
set autoindent
set ic
set hls
set nobackup
set showmatch
set ignorecase
set ts=4
set sw=4
set sts=4
" set smartindent
set nowrap
set expandtab
set mouse=a
set clipboard=unnamed
" disable recording:
map q <Nop>
" better indentation (doesn't lose selection):
vnoremap < <gv
vnoremap > >gv
" place a line at 80 columns:
set colorcolumn=80
highlight colorcolumn ctermbg=233
