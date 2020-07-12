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

" Reason ML Syntax
Plug 'reasonml-editor/vim-reason-plus'

" Plugin for typescript
Plug 'leafgarland/typescript-vim'

" Plugin for tsx
Plug 'ianks/vim-tsx'

" Plugin for fish shell syntax
Plug 'dag/vim-fish'

" Plugin for i3 config syntax
Plug 'mboughaba/i3config.vim'

" Surrounding text
Plug 'tpope/vim-surround'

" Plug for auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
Plug 'morhetz/gruvbox'

" Plugin for rainbox parenthesis 
Plug 'luochen1990/rainbow'

" end vim-plug
call plug#end()
