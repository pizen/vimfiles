" Ian's .vimrc file.  If you're not using VIM, you should be. "

set nocompatible

" Pathogen stuff
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" Security
set modelines=0

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Basic options
set autoindent
set smartindent
set ruler
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

" Relative numbering only supported in 7.3+
if v:version >= 703
    set relativenumber
else
    set number
endif

" Make the status line more useful
set statusline=                              " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%l,%c%V\ (%P)        " offset

" Show hidden whitespace characters
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Set the colors if the terminal supports it
if &term =~? 'mlterm\|xterm'
    set t_Co=256
endif

" Color scheme
syntax on
set background=dark
colorscheme molokai/colors/molokai

" Mode-specific status line color
function! InsertStatuslineColor(mode)
    if a:mode == 'i'
        hi statusline guifg=#F92672
    elseif a:mode == 'r'
        hi statusline guifg=#66D9EF guibg=#080808
    else
        hi statusline guifg=#AE81FF
    endif
endfunction

autocmd InsertEnter * call InsertStatuslineColor(v:insertmode)
autocmd InsertLeave * hi statusline guifg=#455354 guibg=fg

" Makefile sanity
autocmd FileType make set noet ts=8 sw=8 sts=8

autocmd FileType py set textwidth=79 " PEP-8
autocmd FileType c,cpp setlocal tabstop=2 softtabstop=2 shiftwidth=2

if exists('+colorcolumn')
    set colorcolumn=80
endif

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

" Paste toggling
set pastetoggle=<leader>p
