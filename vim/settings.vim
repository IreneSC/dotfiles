" We have to turn this stuff back on if we want all of our features.
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting

set cc=80
" Default to 4 space tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set cindent " Intellegently dedent / indent new lines based on rules.

" if $MOBILE_ROBOTICS_MODE_ENABLED
"     autocmd Filetype python setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
" else
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
" endif

autocmd Filetype java   setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype xml    setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype yaml   setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype ocaml  setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" Make vim windows resize when the window resizes
autocmd VimResized * wincmd =

augroup ros_format
    au!
    autocmd BufEnter *.world  set filetype=xml
    autocmd BufEnter *.launch set filetype=xml
    autocmd BufEnter *.rviz   set filetype=yaml
augroup end

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

" Easily find and replace current word
nnoremap <Leader>s :%s/\<\(<C-r><C-w>\)\>//<Left>

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
" set showmatch
" How many tenths of a second to blink when matching brackets
set mat=1

"" messages and info
set shortmess=aoOstTI
set showcmd
set showmode
set cursorline
set report=0
set noerrorbells
set visualbell t_vb=

" cursor settings
" set guicursor=n-v-c:block-Cursor/lCursor,
" set guicursor+=ve:ver35-Cursor,
" set guicursor+=o:hor50-Cursor,
" set guicursor=i-ci:hor10-Search
" set guicursor+=i:blinkon0
" set guicursor=i:hor10-Cursor/lCursor,
" set guicursor+=r-cr:hor20-Cursor/lCursor,
" set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175"

if &term =~ '^xterm\\|rxvt'
  " solid underscore
  let &t_SI .= "\<Esc>[4 q"
endif

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

" hi MatchParen cterm=bold ctermbg=green ctermfg=blue

if has('arabic')
    set noarabicshape
endif

"Set current working directory to change on window enter.
autocmd BufEnter * silent! lcd %:p:h

" Disable parentheses matching depends on system. This way we should address all cases (?)
if has('unix')
    set noshowmatch
end

" A massively simplified take on https://github.com/chreekat/vim-paren-crosshairs
" func! s:matchparen_cursorcolumn_setup()
"   augroup matchparen_cursorcolumn
"     autocmd!
"     autocmd CursorMoved * if get(w:, "paren_hl_on", 0) | set cursorcolumn | else | set nocursorcolumn | endif
"     autocmd InsertEnter * set nocursorcolumn
"   augroup END
" endf
" if !&cursorcolumn
"   augroup matchparen_cursorcolumn_setup
"     autocmd!
"     " - Add the event _only_ if matchparen is enabled.
"     " - Event must be added _after_ matchparen loaded (so we can react to w:paren_hl_on).
"     autocmd CursorMoved * if exists("#matchparen#CursorMoved") | call <sid>matchparen_cursorcolumn_setup() | endif
"           \ | autocmd! matchparen_cursorcolumn_setup
"   augroup END
" endif

" NoMatchParen " This doesnt work as it belongs to a plugin, which is only loaded _after_ all files are.
" Trying disable MatchParen after loading all plugins

if has('unix')
    function! g:DisableMatchParen ()
        if exists(":NoMatchParen")
            :NoMatchParen
        endif
    endfunction

    augroup plugin_initialize
        autocmd!
        autocmd VimEnter * call DisableMatchParen()
    augroup END
end

set tags=tags;/

" Highlight text > 80 characters as red, but only in ocaml
au Filetype ocaml highlight OverLength ctermbg=red ctermfg=white guibg=#592929
au Filetype ocaml match OverLength /\%81v.\+/
" if &filetype ==# 'ocaml'
"     :echom "should work"
" else
"     :echom &filetype
" end
