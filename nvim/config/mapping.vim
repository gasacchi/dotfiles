"================================
" MAPPING
"================================
" Disabling arrow key and live with it >.<
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Map Leader to ,
let mapleader=','

" Remap Esc to jk
inoremap jk <ESC>

" turn off search highlight
nnoremap <Leader><space> :nohlsearch<CR>

" Save file with leader key
noremap <Leader>w :w<CR>

" Save and exit with leader
noremap <Leader>e :wq<CR>

" exit 
noremap <Leader>q :q <CR>

" force not saving
noremap <Leader>q1 :q!<Cr>

" Move between split faster
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Reload vim configuration
nnoremap <Leader>rv :source $MYVIMRC<CR>

" edit vim config faster
nnoremap <Leader>cv :e $MYVIMRC <CR>

" ===============================
" MAPPING END
" ===============================
