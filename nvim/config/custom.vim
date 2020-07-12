" ==============================
" CUSTOM CONFIGURATION AND MAPPING
" ==============================

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
colorscheme gruvbox

" Transparent
" hi Normal guibg=NONE ctermbg=NONE

map <Leader>ss :Startify<CR>

" fzf config
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>

" GIT FUGNITIVE
noremap <Leader>gs :G<CR>
