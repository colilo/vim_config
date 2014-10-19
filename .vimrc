" Use Vim settings, rather than Vi settings (much better!).

" This must be first, because it changes other options as a side effect.

set nocompatible

" allow backspacing over everything in insert mode

set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history

set ruler		" show the cursor position all the time

set showcmd		" display incomplete commands

set incsearch		" do incremental searching

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
