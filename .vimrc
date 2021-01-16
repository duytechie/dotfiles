" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Gruvbox color scheme; fetches https://github.com/morhetz/gruvbox
Plug 'morhetz/gruvbox'

" unite.vim for vimfiler
Plug 'Shougo/unite.vim'

" Vimfiler
Plug 'Shougo/vimfiler.vim'


" Initialize plugin system
call plug#end()

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

syntax on

" set color scheme and background
colorscheme gruvbox
set background=dark

" set relative number lines
set nu

" set tab = 4 spaces
set tabstop=4

" plit window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Move window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-
set equalalways

" Switch tab
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

" Vimfiler config
nmap sf :VimFilerBufferDir<Return>
nmap sF :VimFilerExplorer -find<Return>
nmap sb :Unite buffer<Return>
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_enable_auto_cd = 0
let g:vimfiler_tree_leaf_icon = ''
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_marked_file_icon = '✓'


" use system clipboard
" https://anuragpeshne.github.io/essays/vim/7.html
"noremap y "*y
"noremap yy "*yy
"noremap Y "*y$
"noremap x "*x
"noremap dd "*dd
"noremap D "*D
"set clipboard=unnamedplus



















