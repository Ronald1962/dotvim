" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2006 Nov 16

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup	" do not keep a backup file, use versions instead
set history=50	" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch	" do incremental searching
set number

" In many terminal emulators the mouse works just fine, thus enable it.
" 2009-11-02: alleen muis in insert mode, anders ellende met copy + paste
"set mouse=a
set mouse=i

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" For all text files set 'textwidth' to 78 characters.
autocmd FileType text setlocal textwidth=88

" Toegevoegd voor default tab-stops (4 posities) en omzetten tabs in spaties
set expandtab
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Onderstaande vanuit: http://vimcolorschemetest.googlecode.com/svn/colors/nightsky.vim
hi Cursor       ctermfg=white ctermbg=red 
hi VertSplit    ctermfg=darkblue ctermbg=cyan
hi Folded       ctermfg=lightmagenta ctermbg=black
hi FoldColumn   ctermfg=lightgray ctermbg=darkmagenta
hi ModeMsg      ctermfg=black ctermbg=gray
hi MoreMsg      ctermfg=cyan ctermbg=darkcyan
hi NonText      ctermfg=gray ctermbg=darkgrey
hi Question     ctermfg=yellow
hi SpecialKey   ctermfg=brown
hi StatusLine   ctermfg=lightgray ctermbg=darkgray
hi StatusLineNC ctermfg=darkgray ctermbg=black
hi Title        ctermfg=blue
hi Visual       ctermfg=black ctermbg=darkgreen
hi WarningMsg   ctermfg=red

hi Comment      ctermfg=lightgray
hi Constant     ctermfg=lightcyan
hi Number       ctermfg=green
hi Identifier   ctermfg=gray
hi Statement    ctermfg=yellow
hi PreProc      ctermfg=green
hi Type         ctermfg=white "brown
hi Special      ctermfg=brown "darkmagenta
hi Ignore       ctermfg=gray 
hi Todo         ctermfg=darkblue ctermbg=darkgray
hi Label        ctermfg=darkmagenta

" 2012-01-20 Toegevoegd voor altijd gebruiken utf8
set encoding=utf8
set fileencoding=utf8

" 2013-03-25 Toegevoegd om alles een beetje leesbaar te houden:
set bg=dark

" 2013-04-30 Toegevoegd om rechterkantlijn te laten zien:
set colorcolumn=88

" 2020-09-15 Toegevoegd om geen pyc en andere binary files te laten zien:
set wildignore+=*.pyc,*.o
let NERDTreeRespectWildIgnore=1
let g:netrw_list_hide= '.*\.swp$,.*\.pyc,*.o'
