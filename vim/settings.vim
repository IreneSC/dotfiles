" We have to turn this stuff back on if we want all of our features.
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

" Default to 2 space tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype java   setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" We have VCS -- we don't need this stuff.
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

" don't nag me when hiding buffers
set hidden " allow me to have buffers with unsaved changes.
set autoread " when a file has changed on disk, just load it. Don't ask.

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.

" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block

map <C-h> <C-w>

colo desert

" Easily find and replace current word
nnoremap <Leader>s :%s/\<\(<C-r><C-w>\)\>//g<Left><Left>

" Enable modeline for individual file specific settings"
set modeline

" Force 256 color
if !has('nvim')
    set term=screen-256color
endif
set t_Co=256
set t_ut=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable mouse
set mouse=a

" Set 3 lines to the cursor - when moving vertically using j/k
set so=4

" Turn on the WiLd menu
set wildmenu
set wildmode=list:longest,full

" Ignore compiled files
set wildignore=*.o,*~,*.gch,*.pyc,*.jpg,*.gif,*.png

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hidden

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l,[,]

" No idea what this does
set nostartofline

" List the tab spaces and trailing charaters as below
set list
" set listchars=tab:»·,trail:·
" set listchars=tab:»·,eol:¬,trail:·,extends:↪,precedes:↩
set listchars=tab:»·,trail:·,extends:↪,precedes:↩

" Always show tabs (avoids frequent window resizing)
set showtabline=2 

" Open new horizontal split below the current window
set splitbelow

" Open vertical split to the right of the current window
set splitright

" Set minimum windows height to 3, doesn't work
"set winheight=3
"set winminheight=3

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2


"" messages and info
set shortmess=aoOstTI
set showcmd
set showmode
set cursorline
set report=0
set noerrorbells
set visualbell t_vb=

autocmd GUIEnter * set visualbell t_vb=
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Commenting this out as it is not compatible with vi"
" folding
"set nofoldenable
"set foldmarker={,}
"set foldmethod=syntax
"set foldlevel=0
"set foldopen+=jump

"Show the line numbers
set number
set relativenumber

" Linebreak on 500 characters
" set lbr
" set tw=80

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Disable scrollbars and tab button bar.
setglobal guioptions-=L
setglobal guioptions-=l
setglobal guioptions-=R
setglobal guioptions-=r
setglobal guioptions-=b
setglobal guioptions-=h

" Always show the status line
set laststatus=2
set enc=utf-8
set fillchars+=stl:=,stlnc:\ 

" Remember info about open buffers on close
"
set viminfo^=%

" Don't redraw while executing macros (good performance config)
set lazyredraw

""20 command line editing
set history=100

if has('arabic')
    set noarabicshape
endif

"Set current working directory to change on window enter.
autocmd BufEnter * silent! lcd %:p:h
