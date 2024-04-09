" vimrc of Christoph Hehl - 2024

" PLUGINS vim-plug (https://github.com/junegunn/vim-plug)
call plug#begin()
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'unblevable/quick-scope'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" APPEARANCE
syntax enable
set background=dark
set number

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR = "\e[3 q"

" BEHAVIOR
set ignorecase
set smartcase
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest

" KEY MAPPINGS
inoremap jj <esc>

noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

map <F2> :NERDTreeToggle<CR>

" PLUGIN BEHAVIOR:
     " NERDTREE
     " Start NERDTree when Vim is started without file arguments.
     autocmd StdinReadPre * let s:std_in=1
     autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
     " Close the tab if NERDTree is the only window remaining in it.
     autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

     " AIRLINE
     let g:airline_powerline_fonts = 1

     " Trigger a highlight in the appropriate direction when pressing these keys:
     let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

