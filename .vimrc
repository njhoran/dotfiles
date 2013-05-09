" Edmond Burnett's .vimrc
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
" colorscheme jellybeans
" colorscheme gruvbox
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
" set folding method to indent (works well for python)
" set foldmethod=indent
" ignore case in search patterns
set ic
" do case-sensitive search if a character is uppercase
set smartcase
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
" color below was 233
highlight colorcolumn ctermbg=232
" remove trailing whitespace in .py files
autocmd BufWritePre *.py :%s/\s\+$//e
" auto-reload .vimrc and Powerline after saving
autocmd BufWritePost .vimrc so ~/.vimrc
autocmd BufWritePost .vimrc call Pl#Load() 
" open files in new tab (MRU plugin)
let MRU_Open_File_Use_Tabs=1
" map the leader key to the comma
let mapleader = ','
" temporarily disable vim-jedi display of function definitions (slowdown)
let g:jedi#show_function_definition = 0


" =============
" Leader macros
" =============

" open .vimrc in a new tab
map <Leader>v :tabe ~/.vimrc<cr>
" retrieve git status of current repo (fugitive plugin)
map <Leader>gs :Gstatus<cr>
" open NERDTree (plugin)
map <Leader>t :NERDTree<cr>
" open MRU (most recently-used files plugin)
map <Leader>m :MRU<cr>
" toggle paste mode
map <Leader>p :set paste!<cr>
" turn off search highlight
map <Leader>h :nohlsearch<cr>
" save using sudo
map <Leader>su :w !sudo tee %<cr>
" open journal
map <Leader>j :tabe ~/notes/journal.gpg<cr>G$
" open learnedtoday
map <Leader>l :tabe ~/notes/learned_today<cr>G$


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
