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
let g:startify_custom_header =
              \ startify#pad(split(system('toilet "Gasacchi"') ,'\n'))

