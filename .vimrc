"*************************************************************
""
"" Try and get some of that VIM magic with a few extra settings
""
"*************************************************************

"" Turn on Syntax Highlighting
syntax on

"" show line numbers
set number

"" don't do line wrap in the middle of a word
set linebreak

"" Turn on show mode to know current VIM mode
set showmode

"" Ignore case in search, except when capital in search string
set ignorecase
set smartcase

"" Show dynamic incremental search results
set incsearch

"" Set the spelling mode
"set spell spelllang=en_us

"" Highlight all search results
set hlsearch

"" mouse enabled
set mouse=a

"*************************************************************
""
"" Stuff for programming
"" Show line numbers, show matching brackets, autoindent
""
"*************************************************************
"" show matching brackets
set showmatch

"" language specific autoindentation
set autoindent

"" expand tabs to be spaces, and set tab to 4 (default is 8)
set expandtab
set tabstop=4
set smarttab
set shiftwidth=4

"" programming language specific indentation
set smarttab

"" file type specific indenting
filetype indent on

"" Disable Swapfile
set noswapfile

""***********************************************************
""
"" Define functions for getting the git branch for the
"" current file/buffer being opened.
""
""***********************************************************
function! GitBranch()
	return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
	let l:branchname = GitBranch()
	return strlen(l:branchname) > 0?' '.l:branchname.' ':''
endfunction

""***********************************************************
""
"" set the status bar to show filename all the time,
"" git info, line, column, mode, etc
""
""***********************************************************

set laststatus=2
set statusline+=\[b\:%n\]
set statusline+=\[%{StatuslineGit()}\]
set statusline+=%m
set statusline+=\ %f

"
" Set the rest of status line to be right justified
"
set statusline+=%=

""
"" Set the right hand information
""
set statusline+=%y
set statusline+=\ \ %l:%c\ \ \ \ 
set statusline+=\ %p%%\ \ 

""***********************************************************
""
"" variables for Termdebug
""
""***********************************************************
let g:termdebug_wide=163
let g:termdebug_popup=0

""***********************************************************
""
"" And... out
""
""***********************************************************

