" Peter Mader's .vimrc 

" be iMproved, no vi compatibility
set nocompatible           
filetype off                  

filetype plugin indent on

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
" display numbers in every buffer
autocmd BufWinEnter * set number

" important! In order to display umlauts correctly
set encoding=utf-8

if has('win32')
    " default file format in Windows
    set fileformat=dos

    " in Unix, Ctrl-Z pauses Vim and puts the shell in the foreground
    " this imitates this feature on Windows
    noremap <Ctrl-Z> :sh<CR>
else
    " default file types: UNIX
    set fileformat=unix
endif

" show existing tab with 4 spaces width
set tabstop=4
set softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" exchange ; and ,
nnoremap ; ,
nnoremap , ;

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

" show the ruler (info like cursor position and current time)
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


set ignorecase
set smartcase
