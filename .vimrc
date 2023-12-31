" disable legacy stuff
set nocompatible

" relative numbers
set number relativenumber
set nu rnu

" enable syntax highlighting
syntax on
filetype plugin on

" whitespace highlighting
highlight ExtraWhitespace ctermbg=red guibg=red
" Show trailing whitespace and spaces before a tab:
:match ExtraWhitespace /\s\+$\| \+\ze\t/

" fuzzy file search
command! Ctags !ctags -R .

" tab size
set tabstop=4

" fizzy file search
set path+=**
set wildmenu
set wildmode=longest:full,full

" file browser
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_winsize=75
