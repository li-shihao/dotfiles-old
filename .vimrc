set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'itchyny/vim-gitbranch'
Plugin 'tmhedberg/SimpylFold'

call vundle#end()
syntax enable
filetype plugin indent on

" nord
let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_uniform_status_lines = 1
let g:nord_italic = 1
let g:nord_uniform_diff_background = 1
let g:nord_cursor_line_number_background = 1
let g:nord_bold_vertical_split_line = 1
colorscheme nord

" lightline
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

" bindings
nmap <silent> <C-h> :tabnext<CR>
nmap <silent> <C-l> :tabprev<CR>
imap <silent> <C-h> <esc><C-n>
imap <silent> <C-l> <esc><C-p>
nmap <silent> <C-w> :tabclose<CR>
nnoremap <space> za
set backspace=indent,eol,start

" misc
set foldmethod=indent
set foldlevel=99

