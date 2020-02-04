" Plugins
call plug#begin(stdpath('data') .'/plugged')

Plug 'ycm-core/YouCompleteMe' 
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

call plug#end()

" General
filetype plugin on
syntax on
filetype indent on
set number
set background=dark
colorscheme solarized
set tabstop=2
set shiftwidth=2
set expandtab
map <F7> gg=G<C-o><C-o>

" Ale
let g:ale_fixers = {
      \ 'javascript': ['eslint'],
      \ 'cpp': ['clangd']
      \ }
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'cpp': ['clangd']
      \ }
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_open_list = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Lightline
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'selenized_dark',
      \}
