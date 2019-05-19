set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'luochen1990/rainbow'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'arcticicestudio/nord-vim'
Plugin 'itchyny/vim-gitbranch'
Plugin 'Valloric/YouCompleteMe'
Plugin 'taohexxx/lightline-buffer'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'

call vundle#end()
syntax enable
filetype plugin indent on

" nord
let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_uniform_status_lines = 1
let g:nord_uniform_diff_background = 1
let g:nord_cursor_line_number_background = 1
let g:nord_bold_vertical_split_line = 1
colorscheme nord

" ycm
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" lightline
set hidden
set showtabline=2
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
      \ 'tabline': {
      \   'left': [ [ 'bufferinfo' ],
      \             [ 'separator' ],
      \             [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
      \   'right': [ [ 'close' ], ],
      \ },
      \ 'component_expand': {
      \   'buffercurrent': 'lightline#buffer#buffercurrent',
      \   'bufferbefore': 'lightline#buffer#bufferbefore',
      \   'bufferafter': 'lightline#buffer#bufferafter',
      \ },
      \ 'component_type': {
      \   'buffercurrent': 'tabsel',
      \   'bufferbefore': 'raw',
      \   'bufferafter': 'raw',
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \   'bufferinfo': 'lightline#buffer#bufferinfo',
      \ },
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

let g:lightline_buffer_readonly_icon = ''
let g:lightline_buffer_modified_icon = '✭'
let g:lightline_buffer_git_icon = ' '
let g:lightline_buffer_ellipsis_icon = '..'
let g:lightline_buffer_expand_left_icon = '◀ '
let g:lightline_buffer_expand_right_icon = ' ▶'
let g:lightline_buffer_active_buffer_left_icon = ''
let g:lightline_buffer_active_buffer_right_icon = ''
let g:lightline_buffer_separator_icon = '  '
let g:lightline_buffer_show_bufnr = 1
let g:lightline_buffer_fname_mod = ':t'
let g:lightline_buffer_excludes = ['vimfiler']
let g:lightline_buffer_maxflen = 30
let g:lightline_buffer_maxfextlen = 3
let g:lightline_buffer_minflen = 16
let g:lightline_buffer_minfextlen = 3
let g:lightline_buffer_reservelen = 20

" fold
let g:SimpylFold_docstring_preview = 1
set foldmethod=indent
set foldlevel=99

" bindings
nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <C-w> :bd<CR>
nnoremap <space> za
set backspace=indent,eol,start

" misc
set hlsearch
set encoding=utf-8
set incsearch
set cursorcolumn
highlight CursorLineNr ctermfg=220
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
let g:NERDTreeExtensionHighlightColor = {} 
let g:NERDTreeExtensionHighlightColor['css'] = s:blue 
let g:NERDTreeExactMatchHighlightColor = {} 
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange 
let g:NERDTreePatternMatchHighlightColor = {} 
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red "

"nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

"rainbow
let g:rainbow_active = 1
