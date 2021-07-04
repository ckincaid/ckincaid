"*************************************************************
""
"" Try and get some of that VIM magic with a few extra settings
""
"*************************************************************

"" Turn on Syntax Highlighting
syntax on

"*************************************************************
""
"" Stuff for programming
"" Show line numbers, show matching brackets, autoindent
""
"*************************************************************
set number
set showmatch
set autoindent

"" Turn on show mode to know current VIM mode
set showmode

"" Disable Swapfile
set noswapfile

"" Highlight all search results
set hlsearch

"" Ignore case in search
set ignorecase

"" Show dynamic incremental search results
set incsearch

"" Set the spelling mode
"set spell spelllang=en_us

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

""
"" set the status bar to show filename all the time
""
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
set statusline+=\ %p%%

""***********************************************************
""
"" variables for Termdebug
""
""***********************************************************
let g:termdebug_wide=163
let g:termdebug_popup=0

""
"" And... out
""
