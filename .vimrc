" ===========================
" .vimrc by Edmond Burnett
" http://github.com/edburnett
" ===========================

" enable Pathogen plugin
call pathogen#infect()      
" enable syntax highlighting
syntax on
" enable file type determination
filetype indent plugin on
" set colour scheme
colorscheme xoria256
" 256 colors
set t_Co=256
" Yeah, so... I forget what this does
set modeline
" enable line numbers
set nu
" do not run in vi compatibility mode (yuck)
set nocompatible
" autoindenting on
set autoindent
" ignore case in search patterns
set ic
" highlight search matches
set hls
" don't create backup files
set nobackup
" show matching brackets/parens
set showmatch
" ignore case in normal letters
set ignorecase
" expand tabs to spaces
set expandtab
" 4-space tabs? everyone loves those
set ts=4
" shift width
set sw=4
" makes expanded spaces behave like tabs
set sts=4
" show current incomplete command on status bar
set showcmd
" do not wrap text
set nowrap
" make mouse behave (but seriously, don't use a mouse)
set mouse=a
" give us a regular-behaving backspace
set bs=2
" use system clipboard by default
set clipboard=unnamed
" always enable statusline (powerline plugin)
set laststatus=2
" force encoding to utf-8 (powerline plugin)
set encoding=utf-8
" put an ominous gray/#233 line at column 80
set colorcolumn=80
highlight colorcolumn ctermbg=233
" remove trailing whitespace in .py files
autocmd BufWritePre *.py :%s/\s\+$//e
" auto-reload .vimrc and Powerline after saving
autocmd BufWritePost .vimrc so ~/.vimrc
autocmd BufWritePost .vimrc call Pl#Load() 
" open files in new tab (MRU plugin)
let MRU_Open_File_Use_Tabs=1
" remap the leader key
let mapleader = ','


" =============
" Leader macros
" =============

" open .vimrc in a new tab
map <Leader>v :tabe ~/.vimrc<cr>
" retrieve git status of current repo (fugitive plugin)
map <Leader>gs :Gstatus<cr>
" open NERDTree (plugin)
map <Leader>n :NERDTree<cr>
" open MRU (most recently-used files plugin)
map <Leader>m :MRU<cr>
" toggle paste mode
map <Leader>p :set paste!<cr>


" ==============
" Key remappings
" ==============

" better indenting in visual mode (doesn't lose selection)
vnoremap < <gv
vnoremap > >gv
" disable arrow keys in normal & visual mode 
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
