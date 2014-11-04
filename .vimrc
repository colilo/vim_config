" Use Vim settings, rather than Vi settings (much better!).

" This must be first, because it changes other options as a side effect.

set nocompatible

set tabstop=4       " Number of spaces that a <Tab> in the file counts for.

set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.

set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.

set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.

set history=50		" keep 50 lines of command line history


set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.

set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.

set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.

set ignorecase      " Ignore case in search patterns.

set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).
set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode.
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)

set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.

set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')

  set mouse=a

endif

" Only do this part when compiled with support for autocommands.

if has("autocmd")

  " Enable file type detection.

  " Use the default filetype settings, so that mail gets 'tw' set to 72,

  " 'cindent' is on in C files, etc.


  " Also load indent files, to automatically do language-dependent indenting.

  filetype plugin indent on

  autocmd FileType text setlocal textwidth=80

endif " has("autocmd")

set statusline=%M%h%y\ %F\ %p%%\ %l/%L\ %=[%{&ff},%{&ft}]\ [ascii=\%03.3b\ hex=\%02.2B]\ [%l,%v]
set laststatus=2
set cmdheight=2
