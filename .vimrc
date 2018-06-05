execute pathogen#infect()
set number
set autoindent
syntax on
set mouse=a
set wildmenu
set showmatch		" show matching parentheses
set ruler
" set list
set expandtab		" tabs expand to spaces
set tabstop=4 	" number of visual spaces per tab
set softtabstop=4	" number of space per tab

" following is Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

cmap w!! w !sudo tee %
