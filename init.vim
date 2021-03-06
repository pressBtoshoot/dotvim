" __     _____ __  __ ____   ____ 
" \ \   / /_ _|  \/  |  _ \ / ___|
"  \ \ / / | || |\/| | |_) | |   
"  _\ V /  | || |  | |  _ <| |___ 
" (_)\_/  |___|_|  |_|_| \_\\____|

"  _____ ____      _    _   _ _  __ __     ___    _   _  __     ___   _ _   _ ____  _____ _   _ 
" |  ___|  _ \    / \  | \ | | |/ / \ \   / / \  | \ | | \ \   / / | | | | | |  _ \| ____| \ | |
" | |_  | |_) |  / _ \ |  \| | ' /   \ \ / / _ \ |  \| |  \ \ / /| | | | | | | |_) |  _| |  \| |
" |  _| |  _ <  / ___ \| |\  | . \    \ V / ___ \| |\  |   \ V / | |_| | |_| |  _ <| |___| |\  |
" |_|   |_| \_\/_/   \_\_| \_|_|\_\    \_/_/   \_\_| \_|    \_/   \___/ \___/|_| \_\_____|_| \_|
"                                                       

"  ____  _    _   _  ____ ___ _   _ ____  
" |  _ \| |  | | | |/ ___|_ _| \ | / ___| 
" | |_) | |  | | | | |  _ | ||  \| \___ \ 
" |  __/| |__| |_| | |_| || || |\  |___) |
" |_|   |_____\___/ \____|___|_| \_|____/ 

" Feel free to share. Share to be free

call plug#begin('~/.config/nvim/bundle')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'jelera/vim-javascript-syntax'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'luochen1990/rainbow'
Plug 'chrisbra/csv.vim'
Plug 'wavded/vim-stylus'
Plug 'digitaltoad/vim-pug'
Plug 'junegunn/vim-easy-align'
Plug 'rhysd/open-pdf.vim'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-mix-format'
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
call plug#end()

"  ____  _____ _____ _____ ___ _   _  ____ ____  
" / ___|| ____|_   _|_   _|_ _| \ | |/ ___/ ___| 
" \___ \|  _|   | |   | |  | ||  \| | |  _\___ \ 
"  ___) | |___  | |   | |  | || |\  | |_| |___) |
" |____/|_____| |_|   |_| |___|_| \_|\____|____/ 
set timeout ttimeoutlen=50
set fileencodings=utf-8
set nowrap
set number
syntax on
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set hidden
set showcmd
let loaded_matchparen = 1
let mapleader = " "
set noswapfile
set nobackup
set ignorecase
set smartcase
set background=dark
set mouse=a
colorscheme zellner
set laststatus=0

"  _  _________   ____  __    _    ____  ____  
" | |/ / ____\ \ / /  \/  |  / \  |  _ \/ ___| 
" | ' /|  _|  \ V /| |\/| | / _ \ | |_) \___ \ 
" | . \| |___  | | | |  | |/ ___ \|  __/ ___) |
" |_|\_\_____| |_| |_|  |_/_/   \_\_|   |____/ 
nmap <Esc> <Esc>:nohl<CR>
nmap <leader> <leader> :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>z %
nmap va ggvG$
nmap <leader>p :YRShow<CR>
nmap <leader>w <C-W>
nmap <leader>h <<
nmap <leader>j <C-D>
nmap <leader>l >>
nmap <leader>k <C-U>
nmap <leader>P "+P
nmap <leader>Y "+y
nmap <leader>q :q<CR>
nmap <leader>rc :tabe $MYVIMRC<CR>
nmap <leader>rr :source $MYVIMRC<CR>
nmap <leader>ri :PlugInstall<CR>
 map <leader>tr :RainbowToggle<CR>
nmap <leader>tt :setl rnu!<CR> 
nmap <leader>tn :NERDTreeToggle<CR>
nmap <leader>s <Plug>(easymotion-overwin-w)
nmap <leader>gs :Gstatus<CR>
nmap <leader>gh :Gbrowse<CR>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
imap jj <Esc>
tnoremap <Esc> <C-\><C-n> 
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
xmap <leader>a <Plug>(LiveEasyAlign)
cmap w!! w !sudo tee > /dev/null %

"  ____    _    ____    _   _    _    ____  ____ ___ _____ ____  
" | __ )  / \  |  _ \  | | | |  / \  | __ )| __ )_ _|_   _/ ___| 
" |  _ \ / _ \ | | | | | |_| | / _ \ |  _ \|  _ \| |  | | \___ \ 
" | |_) / ___ \| |_| | |  _  |/ ___ \| |_) | |_) | |  | |  ___) |
" |____/_/   \_\____/  |_| |_/_/   \_\____/|____/___| |_| |____/ 

"  ____  _    _   _  ____ ___ _   _    ____ ___  _   _ _____ ___ ____ 
" |  _ \| |  | | | |/ ___|_ _| \ | |  / ___/ _ \| \ | |  ___|_ _/ ___|
" | |_) | |  | | | | |  _ | ||  \| | | |  | | | |  \| | |_   | | |  _ 
" |  __/| |__| |_| | |_| || || |\  | | |__| |_| | |\  |  _|  | | |_| |
" |_|   |_____\___/ \____|___|_| \_|  \____\___/|_| \_|_|   |___\____|
let g:airline_theme='base16'
augroup localneomake
  autocmd! BufWritePost * Neomake
augroup END
let g:neomake_markdown_enabled_makers = []
let g:jsx_ext_required = 0
let g:mix_format_on_save = 1
let NERDTreeShowHidden=1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git\'
let g:rainbow_active = 0
let g:pdf_convert_on_edit = 1
let g:pdf_convert_on_read = 1
