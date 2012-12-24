syntax on
filetype indent plugin on
colorscheme xoria256
" Enable Pathogen
call pathogen#infect()
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
set bs=2
set clipboard=unnamed
" always enable statusline (for powerline)
set laststatus=2
" set encoding (for powerline)
set encoding=utf-8
" set powerline theme
"" let g:Powerline_theme = 'default'
"" let g:Powerline_colorscheme = 'default'
" disable recording:
map q <Nop>
" better indentation (doesn't lose selection):
vnoremap < <gv
vnoremap > >gv
" place a line at 80 columns:
set colorcolumn=80
highlight colorcolumn ctermbg=233
" auto-reload vimrc after it's saved
au BufWritePost .vimrc so ~/.vimrc
" Always open files in new tab with MRU
let MRU_Open_File_Use_Tabs=1
