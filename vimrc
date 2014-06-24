execute pathogen#infect()
syntax on
filetype plugin indent on

" https://github.com/sickill/vim-monokai
colorscheme monokai

" ================= PLUGINS ================
"
" https://github.com/ntpeters/vim-better-whitespace
" https://github.com/kien/ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
" https://github.com/tpope/vim-fugitive
" https://github.com/tpope/vim-sensible
" https://github.com/ciaranm/detectindent
" https://github.com/endel/ctrlp-filetype.vim
" https://github.com/endel/ctrlp-filetype.vim
" https://github.com/lilydjwg/colorizer
" https://github.com/bling/vim-airline
" https://github.com/Yggdroot/indentLine
:set list lcs=tab:\|\ 
" https://github.com/justinmk/vim-gtfo
" https://github.com/tomtom/quickfixsigns_vim
" https://github.com/vim-scripts/tComment
" https://github.com/vim-scripts/Mark--Karkat.git
" https://github.com/michaeljsmith/vim-indent-object
" https://github.com/airblade/vim-rooter
" https://github.com/scrooloose/syntastic
" https://github.com/scrooloose/nerdtree
" https://github.com/jistr/vim-nerdtree-tabs
" https://github.com/Lokaltog/vim-easymotion
" https://github.com/tpope/vim-surround
" https://github.com/sjl/gundo.vim
" https://github.com/vim-scripts/taglist.vim
" https://github.com/vim-scripts/matchit.zip
" https://github.com/editorconfig/editorconfig-vim
" https://github.com/majutsushi/tagbar
" https://github.com/yegappan/grep
" https://github.com/Shougo/vimshell.vim
" https://github.com/Shougo/vimproc.vim
" https://github.com/vim-scripts/OmniCppComplete
" https://github.com/sandeepcr529/Buffet.vim
" https://github.com/airblade/vim-gitgutter
" https://github.com/edkolev/tmuxline.vim

" ============ PERSONAL SETTINGS ============

set number			" show line number
set showmatch 			" highlight matching braces
set scrolloff=3			" keep 3 lines when scrolling
set showcmd			" display incomplete commands
set ttyfast			" smoother changes
set autoread			" set to auto read when a file is changed from the outside
set hidden			" hide buffers instead of closing them
set shortmess+=I		" hide splash screen

set title		" set title
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

" for linux kernel
" set tags=~/kernel/current/ctag.out

" code folding
set foldmethod=syntax   " fold based on indent
set nofoldenable        " dont fold by default

" searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

" python settings
autocmd BufEnter *.py set tabstop=4
autocmd BufEnter *.py set shiftwidth=4
autocmd BufEnter *.py set softtabstop=4
autocmd BufEnter *.py set expandtab
autocmd BufEnter *.py set smarttab

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

" Shell inside vim
noremap <C-d> :sh<cr>

" **************** FUNCTION SHORTCUTS ****************

" save file
nmap <F2> :w<CR>			" normal mode save file
imap <F2> <ESC>:w<CR>i			" insert mode save file

" Nerdtree
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" Taglist
nnoremap <silent> <F4> :TlistToggle<CR>
let Tlist_Close_On_Select = 1 " close the taglist window when a file or tag is selected.
let Tlist_Exit_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_Compact_Format  = 1 " remove extra information and blank lines from the taglist window.
let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.

" Easy Buffer
nnoremap <silent> <F5> :Bufferlistsw<CR>

" **************** NOT USED ANYMORE ****************
"
"vmap <expr> <LEFT>  DVB_Drag('left')
"vmap <expr> <RIGHT> DVB_Drag('right')
"vmap <expr> <DOWN>  DVB_Drag('down')
"vmap <expr> <UP>    DVB_Drag('up')
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
"
" BUFFER EXPLOERE
"  '\be' (normal open)  or
"  '\bs' (force horizontal split open)  or
"  '\bv' (force vertical split open)
"
" status line
" set laststatus=2
" set statusline=                                 " clear the statusline for when vimrc is reloaded
" set statusline+=%-3.3n\                         " buffer number
" set statusline+=%F\                             " file name
" set statusline+=%h%m%r%w                        " flags
" set statusline+=[%{strlen(&ft)?&ft:'none'},     " filetype
" set statusline+=%{strlen(&fenc)?&fenc:&enc},    " encoding
" set statusline+=%{&fileformat}]                 " file format
" set statusline+=[%{GitBranch()}]		" git branch info
" set statusline+=%=                              " right align
" set statusline+=[ASCII=\%b]\ [HEX=\%B]\ \       " ascii and hex code
" set statusline+=[POS=%l,%v]\ [%p%%]\ [%L]       " position and offset
"
" set textwidth=80		" set code width
" set makeprg=gcc\ -o\ %<\ %	" automatically compile with make
" set comments=sl:/*,mb:\ *,elx:\ */	" intelligent comments
" set list lcs=tab:\|\ 	" show tabs and spaces
"
" set autoindent			" always set autoindenting on
" set smartindent			" smart indent
" set cindent			" cindent
" set smarttab
" set expandtab			" use space not tabs
" set wrap			" wrap lines
" TURN indentation on and off
" map <F7> :set noautoindent nosmartindent nocindent<CR> " not needed rather use "+p "+y
" map <F8> :set autoindent smartindent cindent<CR>


