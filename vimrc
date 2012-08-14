" Ian's .vimrc file.  If you're not using VIM, you should be. "

" Pathogen stuff
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

set nocompatible

" Security
set modelines=0

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Basic options
set autoindent
set ruler
set relativenumber
set nohls
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set ttyfast
set laststatus=2
set backspace=indent,eol,start
"set backspace=2
"set encoding=utf-8
"set visualbell

set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Color scheme
syntax on
set background=dark
colorscheme molokai

" Makefile sanity
autocmd BufEnter ?akefile* set noet ts=8 sw=8 sts=8
"autocmd BufEnter */debian/rules set noet ts=8 sw=8

"Set up home and end keys"
map OH 0
map OF $

"Set up page up and page down keys"
map [5~ 
map [6~ 

"Set up graphical options"
"set guifont=-b&h-lucidatypewriter-medium-r-normal-*-*-100-*-*-m-*-iso8859-1
if has("gui_macvim")
  set guifont=Menlo\ Bold:h12
else
  set guifont=bitstream\ vera\ sans\ mono\ 10
endif

" The default methods for highlighting.  Can be overridden later.
" There should be only six of these, because many terminals can only use
" six different colors (plus black and white).  It doesn't look nice with
" too many colors too.
"highlight Comment	term=bold ctermfg=6 guifg=Blue
"highlight Constant	ctermfg=2 guifg=Red gui=NONE
"highlight Identifier	ctermfg=2 guifg=DarkCyan
"highlight Statement	term=bold cterm=bold ctermfg=5 gui=bold guifg=Brown
"highlight PreProc	ctermfg=4 guifg=Purple
"highlight Type	ctermfg=2 guifg=SeaGreen gui=bold
"highlight Special	term=bold ctermfg=6 guifg=SlateBlue

" These two change the background
"highlight Error	term=reverse ctermbg=1 guibg=Orange
"highlight Todo	term=standout ctermbg=3 guifg=Blue guibg=Yellow

" Leader
let mapleader = ","

" Make
nmap <leader>m :make<cr>

" NERDTree
map <F2> :NERDTreeToggle<cr>

" GUI-specific settings
if has('gui_running')
	set go-=T " Disable toolbar
	set go-=l " Disable left scroll
	set go-=L " Disable left scroll in vertical split
	set go-=r " Disable right scroll
	set go-=R " Disable right scroll in vertical split
	set go-=m " Disable menu

	set cursorline
endif

" Window splits
nmap <leader>sw<left>  :topleft  vnew<CR>
nmap <leader>sw<right> :botright vnew<CR>
nmap <leader>sw<up>    :topleft  new<CR>
nmap <leader>sw<down>  :botright new<CR>

" Buffer splits
nmap <leader>s<left>   :leftabove  vnew<CR>
nmap <leader>s<right>  :rightbelow vnew<CR>
nmap <leader>s<up>     :leftabove  new<CR>
nmap <leader>s<down>   :rightbelow new<CR>

" Save
noremap <C-s> :w<CR>
