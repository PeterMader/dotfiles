" Peter Mader's .vimrc 
" interesting: https://github.com/bfontaine/Dotfiles/blob/master/.vimrc

" be iMproved, no vi compatibility
set nocompatible           
filetype off                  

" load the plugins in ~/.vim/bundle (on Windows: %USERPROFILE%\vimfiles\bundle)
" execute pathogen#infect() 

" execute pathogen#helptags()

filetype plugin indent on

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
autocmd BufWinEnter * set number

" important! In order to display umlauts correctly
set encoding=utf-8
" default file types: UNIX
set fileformat=unix

" show existing tab with 4 spaces width
set tabstop=4
set softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" enable vim-hardtime by default
" this will set a delay on the hjkl keys so that they cannot be used repeatedly
let g:hardtime_default_on = 1

" Ctrl-k moves a line up, Ctrl-j moves a line down
noremap <silent> <c-k> :m -2<cr>
noremap <silent> <c-j> :m +1<cr>

" disable the arrow keys
inoremap <up>    <NOP>
inoremap <down>  <NOP>
inoremap <left>  <NOP>
inoremap <right> <NOP>

noremap <up>    <NOP>
noremap <down>  <NOP>
noremap <left>  <NOP>
noremap <right> <NOP>

" keep at least 3 lines above or below the cursor
set scrolloff=3

" open files given as command line arguments in their own tabs
tab all

" show line numbers
set number

" visual autocomplete for command menu
set wildmenu

" search as characters are entered
set incsearch

" show the ruler (info like cursor position)
set ruler
set rulerformat=%55(%{strftime('%H:%M:%S\ %p')}\ %5l,%-6(%c%V%)\ %P%)

" show the status line
set laststatus=1

" set the color theme
colorscheme default

" enable syntax highlighting
syntax enable

" mark text after the 80th column in red
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
