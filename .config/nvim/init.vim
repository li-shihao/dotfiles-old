if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  set  runtimepath+=/usr/local/opt/fzf
  call dein#add('junegunn/fzf.vim')
  call dein#add('Shougo/defx.nvim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('autozimu/LanguageClient-neovim', {
    \ 'rev': 'next',
    \ 'build': 'bash install.sh',
    \ })
  call dein#add('severin-lemaignan/vim-minimap')
  call dein#add('numirias/semshi')
  call dein#add('junegunn/rainbow_parentheses.vim')
  call dein#add('christoomey/vim-tmux-navigator')
  call dein#add('szw/vim-maximizer')
  call dein#add('Yggdroot/indentLine')
  call dein#add('arakashic/chromatica.nvim')
  call dein#add('itchyny/lightline.vim')
  call dein#add('Lenovsky/ayu-vim')
  call dein#add('itchyny/vim-gitbranch')
  call dein#add('taohexxx/lightline-buffer')
  call dein#add('tmhedberg/SimpylFold')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('Raimondi/delimitMate')
  call dein#add('Konfekt/FastFold')
  call dein#add('zhimsel/vim-stay')
  call dein#add('sunaku/vim-dasht')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

call map(dein#check_clean(), "delete(v:val, 'rf')")

filetype plugin indent on
syntax enable

set re=1
set timeoutlen=200
set cursorline 
set viewoptions=cursor,folds,slash,unix
let g:fastfold_savehook = 1
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set termguicolors
let ayucolor='mirage'
colorscheme ayu

" lightline
set hidden
set showtabline=2
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'ayu',
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
let g:simpylfold_docstring_preview = 1
set foldmethod=syntax
set foldlevel=99

" bindings
set wildchar=<Tab> wildmenu wildmode=full
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
nnoremap <Leader>w :bd<CR>
nnoremap <space> za
set backspace=indent,eol,start

" misc
set hlsearch
set encoding=utf-8
set incsearch
set cursorcolumn
highlight CursorLineNr ctermfg=220
set number relativenumber
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

" semshi
let g:semshi#excluded_hl_groups=[]
let g:semshi#simplify_markup=0
" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" indent line
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

" tmux
let g:tmux_navigator_save_on_switch = 2
 
" maxi
let g:maximizer_default_mapping_key = '<C-o>'

" dasht
nnoremap <silent> <Leader>k :call Dasht([expand('<cword>'), expand('<cWORD>')])<Return>
vnoremap <silent> <leader>k y:<C-U>call Dasht(getreg(0))<Return>
let g:dasht_filetype_docsets = {
	\ 'cpp' : ['cpp', 'c', 'boost', 'man_pages'],
	\ 'c' : ['c', 'intelasmx86', 'man_pages'],
	\ 'python' : ['numpy', 'scipy', 'pandas', 'opencv_python', 'keras', 'pytorch',  'matplotlib', 'python_2', 'python_3', 'scikit-learn', 'pwntools']
	\ }

" deoplete
let g:deoplete#enable_at_startup = 1
set completeopt-=preview
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

set hidden
let g:LanguageClient_serverCommands = {
      \ 'c': ['ccls'],
      \ 'cpp': ['ccls'],
      \ 'objc': ['ccls'],
      \ 'python': ['pyls'],
      \ }
let g:LanguageClient_loadSettings = 1 
let g:LanguageClient_settingsPath = '/Users/arthur/.config/nvim/settings.json'
function SetLSPShortcuts()
  nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
  nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
  nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
  nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
  nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
  nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
  nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
  nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
  nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
  nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
endfunction()

call deoplete#custom#source('LanguageClient',
            \ 'min_pattern_length',
            \ 2)
let g:LanguageClient_diagnosticsEnable = 0

" rainbow_parentheses
au VimEnter * RainbowParentheses
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

" defx
autocmd FileType defx setlocal nobuflisted
autocmd FileType defx set norelativenumber
autocmd FileType defx set nonumber 
autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
	setl nonumber
	setl norelativenumber
	setl listchars=
	nnoremap <silent><buffer><expr> q defx#do_action('quit')
    	nnoremap <silent><buffer><expr> l
        	\ defx#is_directory() ? defx#do_action('open') :
        	\ defx#do_action('multi', ['drop', 'quit'])
	nnoremap <silent><buffer><expr> yy    defx#do_action('yank_path')
	nnoremap <silent><buffer><expr> h     defx#do_action('cd', ['..'])
	nnoremap <silent><buffer><expr> ~     defx#async_action('cd')
	nnoremap <silent><buffer><expr> o     defx#do_action('open_or_close_tree')
	endfunction
nnoremap <silent> <C-n> :Defx -split=vertical -winwidth=30 -direction=topleft -columns=indent:icon:filename:type -listed -toggle -search=`expand('%:p')` `getcwd()`<CR>
let g:indentLine_fileType = ['c', 'cpp', 'py', 'vim', 'sh', 'js', 'html', 'css']
let g:minimap_highlight='StatusLine'
let blacklist = ['python']
autocmd CursorMoved * if index(blacklist, &ft) < 0 | exe printf('match SemshiSelected /\V\%%(\<\k\*\%%#\k\*\>\)\@!\&\<%s\>/', escape(expand('<cword>'), '/\'))

" fzf
autocmd FileType fzf setlocal nobuflisted
autocmd FileType fzf set norelativenumber
autocmd FileType fzf set nonumber 
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg -uu --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \ fzf#vim#with_preview(), <bang>0)

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
"
" chromatica
let g:chromatica#libclang_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
let g:chromatica#enable_at_startup=1
let g:chromatica#responsive_mode=1
let g:chromatica#highlight_feature_level=1
