call plug#begin(stdpath('data') .'/plugged')

Plug 'ycm-core/YouCompleteMe' 
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'

call plug#end()

:filetype plugin on
:syntax on
:filetype indent on
:set number
set background=dark
colorscheme solarized
set tabstop=2
set shiftwidth=2

let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
let g:ale_linters = {
 \ 'javascript': ['eslint']
 \ }
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
