" Call Pathogen & AutoComplete
execute pathogen#infect()
let g:neocomplcache_enable_at_startup = 1

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

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Fugitive-Vim
" All start with :
" Gstatus, Gcommit, Gblame, Gmove, Gremove, Glog 

" Custom commands
:map! <F2> Signed-off-by: Carlos Garcia <carlos@cgarcia.org>
:nnoremap <F3> "=strftime("%b %d, %Y")<CR>P
:inoremap <F3> <C-R>=strftime("%b %d, %Y")<CR>
map <C-n> :NERDTreeToggle<CR>
noremap <C-F11> :set list!<CR>
" Plugins
" NerdTree - Ctrl-n
" easymotion - ,,w
" nerdcommenter - ,cc ,cu
