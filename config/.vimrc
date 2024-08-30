" vimrc of Christoph Hehl - 2024

"    __     __    ______    __       __    _______      ______  
"   /  |   /  |  /      |  /  \     /  |  /       \    /      \ 
"   $$ |   $$ |  $$$$$$/   $$  \   /$$ |  $$$$$$$  |  /$$$$$$  |
"   $$ |   $$ |    $$ |    $$$  \ /$$$ |  $$ |__$$ |  $$ |  $$/ 
"   $$  \ /$$/     $$ |    $$$$  /$$$$ |  $$    $$<   $$ |      
"    $$  /$$/      $$ |    $$ $$ $$/$$ |  $$$$$$$  |  $$ |   __ 
"     $$ $$/      _$$ |_   $$ |$$$/ $$ |  $$ |  $$ |  $$ \__/  |
"      $$$/      / $$   |  $$ | $/  $$ |  $$ |  $$ |  $$    $$/ 
"       $/       $$$$$$/   $$/      $$/   $$/   $$/    $$$$$$/  

" PLUGINS vim-plug (https://github.com/junegunn/vim-plug) {{{

call plug#begin()
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" THEMES:
Plug 'joshdick/onedark.vim'     " onedark    | https://github.com/joshdick/onedark.vim
Plug 'sickill/vim-monokai'      " monokai    | https://github.com/sickill/vim-monokai
Plug 'jpo/vim-railscasts-theme' " railscasts | https://github.com/jpo/vim-railscasts-theme
Plug 'dracula/vim'              " dracula    | https://github.com/dracula/vim
Plug 'morhetz/gruvbox'          " gruvbox    | https://github.com/morhetz/gruvbox
Plug 'fcpg/vim-fahrenheit'      " fahrenheit | https://github.com/fcpg/vim-fahrenheit
call plug#end()


packadd! matchit

" }}}

" APPEARANCE {{{

colorscheme railscasts

syntax enable
set number

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR = "\e[3 q"

set noerrorbells
set novisualbell

" }}}

" BEHAVIOR {{{

set incsearch
set hlsearch
set ignorecase
set smartcase

set history=1000
set wildmenu
set wildmode=list:longest

set mouse=a

set scrolloff=1

set tabpagemax=50

set autoindent
set smartindent

set autoread

" }}}

" KEY MAPPINGS {{{

inoremap jj <esc>

let mapleader=" "

nmap <leader>ee :NERDTreeToggle<CR>:echo<CR>

noremap <silent> <leader>nh :nohlsearch<Bar>:echo<CR>

nmap <silent> <leader>wk :wincmd k<CR>
nmap <silent> <leader>wj :wincmd j<CR>
nmap <silent> <leader>wh :wincmd h<CR>
nmap <silent> <leader>wl :wincmd l<CR>

nnoremap <leader>tp :tabprevious<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>to :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>tf :tabnew %<CR>

nnoremap <leader>sv <c-w>v
nnoremap <leader>sh <c-w>s
nnoremap <leader>sn :vnew<CR>
nnoremap <leader>se <c-w>=
nnoremap <leader>sc :close<CR>

" }}}

" PLUGIN BEHAVIOR: {{{

	" NERDTREE
	autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

	" VIM-AIRLINE
	let g:airline_theme='onedark'
	let g:airline#extensions#tabline#enabled = 1

" }}}

