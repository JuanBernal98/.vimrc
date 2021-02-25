set nocompatible
filetype plugin on
filetype indent on

set encoding=utf-8
set fileencoding=utf-8

" Search options
set ignorecase
set smartcase
set hlsearch
set incsearch

" Appearance
syntax enable
colorscheme desert
set number

" Tab behavior
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" Tree style NetRW
" let g:netrw_liststyle=3

" Key Mappings
"" Leader commands
let mapleader = 'º'
nmap <Leader>e :e $MYVIMRC<CR>
nmap <silent> <Leader>n :set number!<CR>
nmap <Leader>q :copen<CR>
nmap <Leader>h :nohl<CR>

"" Tweak defaults
vnoremap > >gv
vnoremap < <gv
nnoremap gp `[v`]

" Ctrl+R then %s//<text-to-replace>
vnoremap <c-r> y<ESC>/<c-r>"<CR>   

" Autocommands
" Source vimrc automatically
augroup myvimrc
  au!
  au BufWritePost .vimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

