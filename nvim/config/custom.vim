" ==============================
" CUSTOM CONFIGURATION AND MAPPING
" ==============================

" Indent
let g:indentLine_setColors = 0
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

" Highlight Coc
autocmd CursorHold * silent call CocActionAsync('highlight')

" Prettier Coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Coc Format File
nmap <silent> <Leader>f :call CocAction('format')<CR>

" rainbow bracket
let g:rainbow_active=1

" i3 config 
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.i3/config set filetype=i3config
aug end

" Support true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" theme
let g:gruvbox_contrast_dark='dark'
colorscheme gruvbox

" Transparent
" hi Normal guibg=NONE ctermbg=NONE

map <Leader>ss :Startify<CR>

" fzf config
nmap <Leader>gf :GFiles<CR>
nmap <Leader>F :Files<CR>

" GIT FUGNITIVE
noremap <Leader>gs :G<CR>
