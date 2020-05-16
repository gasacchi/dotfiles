" ==============================
" Gasacchi Vim / Neovim Config
" ==============================

" ===============================
" vim plug
" ===============================
let g:python3_host_prog='/usr/bin/python3'
call plug#begin('~/.config/nvim/plugged')
" Plug for Startup
Plug 'mhinz/vim-startify'

" Icon 
Plug 'ryanoasis/vim-devicons'

" Hex Color
Plug 'lilydjwg/colorizer'

" Reason ML Syntax
Plug 'reasonml-editor/vim-reason-plus'

" Plugin for typescript
Plug 'leafgarland/typescript-vim'

" Plugin for tsx
Plug 'ianks/vim-tsx'

" Plugin for RUST
Plug 'rust-lang/rust.vim'

" Plugin for fish shell syntax
Plug 'dag/vim-fish'

" Plugin for i3 config syntax
Plug 'mboughaba/i3config.vim'

" Plugin for toml syntax
Plug 'cespare/vim-toml'

" Surrounding text
Plug 'tpope/vim-surround'

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

" Plug for auto pair
Plug 'jiangmiao/auto-pairs'

" Plugin for git manage
Plug 'tpope/vim-fugitive'

" Plugin for status line
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" Theme
Plug 'dracula/vim', {'as': 'dracula'}


" Plugin for rainbox parenthesis 
Plug 'luochen1990/rainbow'

" end vim-plug
call plug#end()
