" Call vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree' " Ctrl-n
Plug 'tpope/vim-fugitive' " Gedit, Gstatus, Gdiff, Gcommit, G[v]split
Plug 'scrooloose/nerdcommenter' " <leader>cc, cn, cspace, cm, cs
Plug 'kien/ctrlp.vim' " Ctrl-p
Plug 'chrisbra/unicode.vim' " Insert mode, type character -> C-X C-Z, C-X C-G
Plug 'bronson/vim-trailing-whitespace' "FixWhitespace
Plug 'scrooloose/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'valloric/youcompleteme'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


" General & Appearance
set autoread " reload file when changes happen in other editors
set nocompatible " Forget being compatible with good ol' vi
let mapleader = ","
set number
set t_Co=256
set tabstop=4
set shiftwidth=4
set textwidth=80
set expandtab
filetype on
filetype plugin on
filetype indent on
syntax on
set hidden
set noswapfile  " no
set nobackup    " swap
set nowb        " files
set lazyredraw
set showmode
set wildmenu
set bs=2 " backspace back to normal
set clipboard=unnamed " global system clipboard
set hlsearch
set incsearch
set ignorecase
set smartcase
set laststatus=2
set listchars=tab:>-,trail:-
set background=dark
colorscheme gruvbox

" vim-airline
let g:airline_powerline_fonts = 1

" Toggle spell checking on and off with `,s`
nmap <silent> <leader>s :set spell!<CR>

" Set region to British English
set spelllang=en_us

" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <Leader>, <esc>:tabprevious<CR>
map <Leader>. <esc>:tabnext<CR>

" ledger-cli
au BufNewFile,BufRead *.ldg,*.ledger setf ledger | comp ledger

" Custom commands
:map! <F2> Signed-off-by: Carlos Garcia <carlos@cgarcia.org>
:nnoremap <F3> "=strftime("%b %d, %Y")<CR>P
:inoremap <F3> <C-R>=strftime("%b %d, %Y")<CR>
map <C-n> :NERDTreeToggle<CR>
noremap <C-F11> :set list!<CR>

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
