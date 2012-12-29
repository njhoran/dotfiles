" ===========================
" Ed Burnett's .vimrc
" http://github.com/edburnett
" ===========================

call pathogen#infect()      " enable Pathogen
syntax on                   " enable syntax highlighting
filetype indent plugin on   " enable file type determination
colorscheme xoria256        " set color scheme
 
set t_Co=256                " 256 colors
set modeline                " Yeah, so... I forget what this does.
set nu                      " enable line numbers
set nocompatible            " do not run in vi compatibility mode (yuck)
set autoindent              " autoindenting on
set ic                      " ignore case in search patterns
set hls                     " highlight search matches
set nobackup                " don't create backup files
set showmatch               " show matching brackets/parens
set ignorecase              " ignore case in normal letters 
set expandtab               " expand tabs to spaces
set ts=4                    " 4-space tabs? everyone loves those. 
set sw=4                    " shift width or something. whatever.
set sts=4                   " make expanded spaces behave like tabs
set showcmd                 " show incomplete command on status bar
"" set smartindent          " do smart indenting when starting new line
"" map q <Nop>              " disable recording
set nowrap                  " do not wrap text
set mouse=a                 " make mouse selections behave (but seriously, don't use a mouse.)
set bs=2                    " give us a regular working backspace
set clipboard=unnamed       " use system clipboard by default
set laststatus=2            " always enable statusline (powerline)
set encoding=utf-8          " force encoding to utf-8 (powerline)
set colorcolumn=80          " put a dark gray line at column 80. Because going past 80 chars, like I am right now, is bad, bad, bad!
highlight colorcolumn ctermbg=233

vnoremap < <gv              " better unindenting (don't lose selection)
vnoremap > >gv              " better indenting

autocmd BufWritePre *.py :%s/\s\+$//e   " remove trailing whitespace on .py files

"" au BufWritePost .vimrc so ~/.vimrc   " auto-reload .vimrc on save
let MRU_Open_File_Use_Tabs=1            " open files in new tabs in MRU


let mapleader = ","         " remap the leader key

" =============
" Leader macros
" =============
map <Leader>v :tabe ~/.vimrc<cr>    " open .vimrc in a new tab
map <Leader>gs :Gstatus<cr>         " get git status (fugitive plugin)
map <Leader>n :NERDTree<cr>         " open Nerdtree
