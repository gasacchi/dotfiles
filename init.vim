" ==============================
" Gasacchi Vim / Neovim Config
" ==============================

" ==============================
" Vim basic config
" ==============================
" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
" Fix backspace indent
set backspace=indent,eol,start

" Fix split to bottom and right
set splitbelow splitright
" Tabs
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
" -- elm tabs --
autocmd Filetype elm setlocal ts=4 sw=4 sts=0 expandtab
" Set Shell
set shell=/usr/bin/bash

" Enable hidden buffer
set hidden

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Visual Settings
set showcmd
" set nowrap
set noshowmode
set showmatch
set cursorline
set cursorcolumn
syntax on
set ruler
set number
set relativenumber

" ==============================
" Vim basic config END
" ==============================

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
"
" Map Leader to ,
let mapleader=','

" Remap Esc to jk
inoremap jk <ESC>

" turn off search highlight
nnoremap <Leader><space> :nohlsearch<CR>

" Save file with leader key
noremap <Leader>w :w<CR>

" Save and exit with leader
noremap <Leader>e cwq<CR>

" Move between split faster
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Show highlight group
nmap <Leader>pp :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists('*synstack')
    return
  endif
  echo map(synstack(line('.'), col('.') ),'synIDattr(v:val, "name")')
endfunc

" reapply colorscheme 
nmap <Leader>po :colorscheme hentai<CR>
"================================
" MAPPING END
"================================

" ===============================
" vim plug
" ===============================
let g:python3_host_prog='/usr/bin/python3'
call plug#begin('~/.config/nvim/plugged')
" Plug for Startup
Plug 'mhinz/vim-startify'

" Icon 
Plug 'ryanoasis/vim-devicons'

" Plugin for typescript
Plug 'leafgarland/typescript-vim'

" Plugin for tsx
Plug 'ianks/vim-tsx'

" Plugin for elm
Plug 'ElmCast/elm-vim'

" Plugin for fish shell
Plug 'dag/vim-fish'

" Plugin for i3 config syntax
Plug 'mboughaba/i3config.vim'

" Plugin for toml syntax
Plug 'cespare/vim-toml'
" Surrounding text
Plug 'tpope/vim-surround'

" Repeat Vim 
" Plug 'tpope/vim-repeat'

" prettier 
Plug 'prettier/vim-prettier', { 'do': 'yarn install'  }

" Plug for auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plugin for NerdTree
Plug 'scrooloose/nerdtree'

" Plugin for git status flags on nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'

" Plugin for fzf
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Plugin for auto align
Plug 'junegunn/vim-easy-align'

" Plug for auto pair
Plug 'jiangmiao/auto-pairs'

" Plugin for git manage
Plug 'tpope/vim-fugitive'

" Plugin for status line
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" Theme
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'arcticicestudio/nord-vim'


" Plugin for rainbox parenthesis 
Plug 'kien/rainbow_parentheses.vim'

" end vim-plug
call plug#end()

" =============================
" VIM Plug END
" =============================


" ==============================
" CUSTOM CONFIGURATION
" ==============================

" i3 config 
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.i3/config set filetype=i3config
aug end

" Auto Align Config
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Reload vim configuration
map <Leader>rr :source ~/.config/nvim/init.vim<CR>

" Use Prettier
map <Leader>p :PrettierAsync<CR>

" Support true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" theme
colorscheme gruvbox

" Transparent
hi Normal guibg=NONE ctermbg=NONE

" enable lightline
set laststatus=2
let g:lightline = {
\   'colorscheme':'gruvbox',
\   'active': {
\     'left':[[ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename', 'modified' ]]
\   },
\   'component': {
\     'lineinfo': ' %3l:%-2v',
\   },
\   'component_function': {
\     'gitbranch': 'fugitive#head',
\   }
\}
let g:lightline.separator = {
\   'left': "\ue0b4", 'right': "\ue0b6"
\}
let g:lightline.subseparator = {
\   'left': "\ue0b5", 'right': "\ue0b7"
\}
let g:lightline.tabline = {
\   'left': [['buffers']],
\   'right': [['close']]
\}
let g:lightline.component_expand = {
\   'buffers': 'lightline#bufferline#buffers'
\}
let g:lightline.component_type = {
\   'buffers': 'tabsel'
\}

" buffer line config
set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline
let g:lightline#bufferline#unnamed = "[NO NAME]"
let g:lightline#bufferline#filename_modifier= ":."
let g:lightline#bufferline#more_buffers = "..."
let g:lightline#bufferline#modified = " +"
let g:lightline#bufferline#read_only = " -"
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#show_number = 0

" vim startify setup
"let g:startify_custom_header =
"              \ startify#pad(split(system('toilet ">_ Gasacchi"') ,'\n'))
map <Leader>ss :Startify<CR>

"nerdtree config
map <Leader>nn :NERDTreeToggle<CR>

" ElmCast config
let g:elm_setup_keybindings = 0

" fzf config
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>

" Coc Config
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

"" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other
" plugin.
inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

 " Use `[g` and `]g` to navigate diagnostics
 nmap <silent> [g <Plug>(coc-diagnostic-prev)
 nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

"" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
" Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
" Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature
"of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h
" coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
noremap <silent> <space>p  :<C-u>CocListResume<CR>
