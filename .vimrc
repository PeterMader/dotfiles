" Peter Mader's .vimrc 

" be iMproved, no vi compatibility
set nocompatible           

filetype plugin indent on

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" important! In order to display umlauts correctly
set encoding=utf-8

" hide abandoned buffers
set hidden

set background=dark
colorscheme apprentice

" GUI options
if has("gui_running")
    set guioptions-=m  " remove menu bar
    set guioptions-=T  " remove toolbar
    set guioptions-=r  " remove right-hand scroll bar
    set guioptions-=L  " remove left-hand scroll bar

    " maximize the GUI window
    " this does *not* maximize the window
    " TODO: find a way to maximize the window platform-independently.
    set lines=999 columns=999

    " set the GUI font
    if has("gui_macvim")
        set guifont=Menlo\ Regular:h14
    elseif has("gui_win32")
        set guifont=Consolas:h12:cANSI
    else
        set guifont=Inconsolata\ 12
    endif
else
    set t_Co=256
endif

if has("win32")
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

" set the leader key to ö
let mapleader="ö"

nnoremap <Leader>ü :ls<cr>:buffer<space>
nnoremap <Leader>l :bprevious<cr>
nnoremap <Leader>ä :bnext<cr>

nnoremap <Leader>w :w<cr>
nnoremap <Leader># :b#<cr>
nnoremap Q gqip

" <Leader>v opens .vimrc
nnoremap <Leader>v :tabedit ~/dotfiles/.vimrc<cr>

" <Space><Space> deactivates hlsearch
nnoremap <silent> <Space><Space> :noh<cr>

" center search matches
nnoremap N Nzz
nnoremap n nzz

cnoremap %% %:h

" exchange ; and ,
nnoremap ; ,
nnoremap , ;

" move vertically by visual line
nnoremap j gj
nnoremap k gk

inoremap jk <ESC>
inoremap kj <ESC>

" fix Y so that is behaves like D
map Y y$

" use ctrl+HJKL to move window focus
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

" disable the arrow keys
inoremap <up>    <NOP>
inoremap <down>  <NOP>
inoremap <left>  <NOP>
inoremap <right> <NOP>

noremap <up>    <NOP>
noremap <down>  <NOP>
noremap <left>  <NOP>
noremap <right> <NOP>

inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
map <Space><Tab> <Esc>/<++><Enter>"_c4l

" keep at least 3 lines above or below the cursor
set scrolloff=3

" show hybrid line numbers
set number
set relativenumber

" visual autocomplete for command menu
set wildmenu

" search as characters are entered
set incsearch

" highlight search matches
set hlsearch

" show the ruler (info like cursor position and current time)
set ruler
set rulerformat=%55(%{strftime('%H:%M:%S\ %p')}\ %5l,%-6(%c%V%)\ %P%)

" show the status line
set laststatus=1

" enable syntax highlighting
syntax enable

" mark text after the 80th column in red
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set ignorecase
set smartcase

if has('win32')
    augroup templates
        autocmd BufNewFile *.tex 0r $HOME/dotfiles/templates/latex-template.tex
        autocmd BufNewFile *.html 0r $HOME/dotfiles/templates/html-template.html
    augroup END
else 
    augroup templates
        autocmd BufNewFile *.tex 0r ~/dotfiles/templates/latex-template.tex
        autocmd BufNewFile *.html 0r ~/dotfiles/templates/html-template.html
    augroup END
endif
