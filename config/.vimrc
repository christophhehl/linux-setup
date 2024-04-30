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
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'raimondi/delimitmate'
Plug 'godlygeek/tabular'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'valloric/youcompleteme'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'jistr/vim-nerdtree-tabs'
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

colorscheme gruvbox

syntax enable
set number

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR = "\e[3 q"

set noerrorbells
set novisualbell

set foldcolumn=1

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

set foldmethod=syntax
autocmd FileType vim setlocal foldmethod=marker

" }}}

" KEY MAPPINGS {{{

inoremap jj <esc>

let mapleader=","

nmap <F2> :NERDTreeToggle<CR>:echo<CR>

noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

nmap <CR> za

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

nmap <Leader>h :resize +2<CR>
nmap <Leader>j :vertical resize +2<CR>
nmap <Leader>k :vertical resize -2<CR>
nmap <Leader>l :resize -2<CR>

" }}}

" PLUGIN BEHAVIOR: {{{

	" NERDTREE
	" Start NERDTree when Vim is started without file arguments.
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
	" Close the tab if NERDTree is the only window remaining in it.
	autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
	" let g:nerdtree_tabs_open_on_console_startup = 2

	" VIM-AIRLINE
	" let g:airline_powerline_fonts = 1
	" let g:airline_theme='murmur'
	let g:airline_theme='onedark'
	let g:airline#extensions#tabline#enabled = 1

	" INDENT GUIDES
	" let g:indent_guides_enable_on_vim_startup = 1
	" let g:indent_guides_guide_size = 1
	" set tabstop=4

	" CTRLP
	let g:ctrlp_show_hidden=1

	" YCM
	let g:ycm_autoclose_preview_window_after_completion=1

" }}}

" COMMANDS {{{

     :command Vimrc :tabe ~/.vimrc

" }}}

