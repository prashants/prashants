" for c programs
set number			" show line number
" set textwidth=80		" set code width
set makeprg=gcc\ -o\ %<\ %	" automatically compile with make
" set tabstop=8			" numbers of spaces of tab character
" set shiftwidth=8		" numbers of spaces to (auto)indent

set autoindent			" always set autoindenting on
set smartindent			" smart indent
set cindent			" cindent
set smarttab
" set expandtab
set wrap			" wrap lines
" set noautoindent
" set nosmartindent
" set nocindent   

" status line
set laststatus=2
set statusline=                                 " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                         " buffer number
set statusline+=%F\                             " file name
set statusline+=%h%m%r%w                        " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},     " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc},    " encoding
set statusline+=%{&fileformat}]                 " file format
set statusline+=%=                              " right align
set statusline+=[ASCII=\%b]\ [HEX=\%B]\ \       " ascii and hex code 
set statusline+=[POS=%l,%v]\ [%p%%]\ [%L]       " position and offset

" general
set title
set scrolloff=3		" keep 3 lines when scrolling
set showcmd		" display incomplete commands
set hlsearch		" highlight searches
set incsearch		" do incremental searching
set ttyfast		" smoother changes
set autoread		" set to auto read when a file is changed from the outside
set ignorecase		" ignore case when searching

" turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

" macros
let @i='I#include <>'		" # #include<>


" others
colorscheme evening
syntax on

" custom shortcuts
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	exec "!gcc % -o %<"
	exec "! ./%<"
endfunc

