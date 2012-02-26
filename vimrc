" for c programs
set number			" show line number
set textwidth=80		" set code width
set makeprg=gcc\ -o\ %<\ %	" automatically compile with make
set showmatch 			" highlight matching braces
set comments=sl:/*,mb:\ *,elx:\ */	" intelligent comments

set autoindent			" always set autoindenting on
set smartindent			" smart indent
set cindent			" cindent
set smarttab
" set expandtab
set wrap			" wrap lines

" code folding
set foldmethod=syntax   " fold based on indent
set nofoldenable        " dont fold by default

" status line
set laststatus=2
set statusline=                                 " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                         " buffer number
set statusline+=%F\                             " file name
set statusline+=%h%m%r%w                        " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},     " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc},    " encoding
set statusline+=%{&fileformat}]                 " file format
set statusline+=[%{GitBranch()}]		" git branch info
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
set hidden

" turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

" others
colorscheme elflord	" theme
syntax on
filetype plugin on

" custom shortcuts
map <F5> :call CompileRunGcc()<CR>	" compile c program
func! CompileRunGcc()
	exec "w"
	exec "!gcc -Wall % -o %<"
	exec "! ./%<"
endfunc
nmap <F2> :w<CR>			" normal mode save file
imap <F2> <ESC>:w<CR>i			" insert mode save file

" python settings
autocmd BufEnter *.py set tabstop=4
autocmd BufEnter *.py set shiftwidth=4
autocmd BufEnter *.py set softtabstop=4
autocmd BufEnter *.py set expandtab
autocmd BufEnter *.py set smarttab

" hide splash screen
set shortmess+=I

" vim menu by pressing Ctrl+Z
if has('wildmenu')
        set wildmenu
        if has('menu')
                if !has('gui_running')
                        runtime! menu.vim
                endif
                " override Ctrl-Z (minimize) by a text-mode menu
                " we can still use :suspend for the original meaning
                " of the key
                set wildcharm=<C-T>
                map <C-Z> :emenu <C-T>
                imap <C-Z> <C-O>:emenu <C-T>
        endif
endif

" unused
" map <F7> :set noautoindent nosmartindent nocindent<CR> " not needed rather use "+p "+y
" map <F8> :set autoindent smartindent cindent<CR>
" set tabstop=8			" numbers of spaces of tab character
" set shiftwidth=8		" numbers of spaces to (auto)indent
" set noautoindent
" set nosmartindent
" set nocindent   
" set foldnestmax=10	" deepest fold is 10 levels
" set foldlevel=1
" colorscheme evening
