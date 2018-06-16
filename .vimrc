execute pathogen#infect()
set number                  " enable line number 
set mouse=a                 " enable mouse in all mode
syntax enable               " syntax highlighting
set wildmenu                " visual autocomplete for command menu
set showmatch		        " show matching parentheses

set ruler                   " indicate row and col number
set colorcolumn=80,120      " highlight column 
highlight ColorColumn ctermbg=darkgrey guibg=darkgrey

" indentation and tab
set expandtab		        " tabs expand to spaces
set tabstop=4 	            " number of visual spaces per tab
set softtabstop=4	        " number of space per tab
set autoindent
set shiftwidth =4           " num of spaces to use per indent

" searching
set ignorecase
set hlsearch                " highlight search matches
" use ctrl-l to de-highlight matches
noremap <silent><c-l> :nohlsearch<cr>
            \:diffupdate<cr>
            \:syntax sync fromstart<cr>
            \<c-l>

" following is Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" write to file with sudo
cmap w!! w !sudo tee %
