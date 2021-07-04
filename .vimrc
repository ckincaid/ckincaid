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

"" set the status bar to show filename all the time
set laststatus=2

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
