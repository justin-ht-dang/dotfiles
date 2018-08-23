execute pathogen#infect()
set mouse=a                     " enable mouse in all mode
syntax enable                   " syntax highlighting
set splitbelow
set termwinsize=15x0
set wildmenu                    " visual autocomplete for command menu
set showmatch		            " show matching parentheses
set backspace=indent,eol,start

set number                      " enable line number 
set ruler                       " indicate row and col number
set colorcolumn=80,120          " highlight column
highlight ColorColumn ctermbg=darkgray guibg=darkgrey


" Lightline
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ }

" cursor
let &t_SI = '\<Esc>]50;CursorShape=1\x7'    " Vertical bar in insert mode
" let &t_EI = '\<Esc>]50;CursorShape=0\x7'  " Block in normal mode

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
let g:syntastic_mode_map = {'passive_filetypes': ['html']} " disable syntastic for html


" RainbowParentheses
augroup rainbow_lisp
    autocmd!
    autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END

" write to file with sudo
cmap w!! w !sudo tee %

call plug#begin()
Plug 'junegunn/goyo.vim'
Plug 'haishanh/night-owl.vim'
Plug 'scwood/vim-hybrid'
Plug 'junegunn/rainbow_parentheses.vim'
call plug#end()

" colorscheme night-owl
" colorscheme hybrid
" colorscheme darkidle
" colorscheme citylights
colorscheme solarized8_flat
cmap goyo Goyo

map <C-f> :NERDTreeToggle<CR>
