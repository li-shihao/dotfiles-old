set runtimepath+=~/.vim_runtime
set noshowmode
set noru
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
try
source ~/.vim_runtime/my_configs.vim
catch
endtry

filetype on
set completeopt-=preview
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * set number relativenumber
autocmd VimEnter * set smartindent
autocmd VimEnter * set shiftwidth=2
autocmd VimEnter * set cindent
autocmd VimEnter * GitGutterEnable
autocmd VimEnter * silent! set cmdheight=0
autocmd Filetype C ClangFormatAutoEnable
autocmd Filetype Cpp ClangFormatAutoEnable
colorscheme nord
let g:python_highlight_all = 1
let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_uniform_status_lines = 1
let g:nord_uniform_diff_background = 1
let g:nord_cursor_line_number_background = 1
let g:nord_bold_vertical_split_line = 1
let g:clang_format#auto_format=1
let g:clang_format#code_style='google'
let g:clang_library_path='/usr/local/Cellar/llvm/8.0.0/lib/libclang.dylib'
let g:clang_snippets = 1
let g:clang_use_library = 1
let g:clang_snippets_engine = 'clang_complete'
let g:clang_complete_auto = 1
let g:clang_auto_select = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++17 -stdlib=libc++'
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = {"type": "style"}
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1
let g:python_highlight_all = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline#extensions#tabline#enabled = 1
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = '' 
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let s:nord_vim_version="0.11.0"
let g:airline#themes#nord#palette = {}

let s:nord0_gui = "#2E3440"
let s:nord1_gui = "#3B4252"
let s:nord2_gui = "#434C5E"
let s:nord3_gui = "#4C566A"
let s:nord4_gui = "#D8DEE9"
let s:nord5_gui = "#E5E9F0"
let s:nord6_gui = "#ECEFF4"
let s:nord7_gui = "#8FBCBB"
let s:nord8_gui = "#88C0D0"
let s:nord9_gui = "#81A1C1"
let s:nord10_gui = "#5E81AC"
let s:nord11_gui = "#BF616A"
let s:nord12_gui = "#D08770"
let s:nord13_gui = "#EBCB8B"
let s:nord14_gui = "#A3BE8C"
let s:nord15_gui = "#B48EAD"

let s:nord0_term = "NONE"
let s:nord1_term = "0"
let s:nord2_term = "NONE"
let s:nord4_term = "NONE"
let s:nord11_term = "1"
let s:nord14_term = "2"
let s:nord13_term = "3"
let s:nord9_term = "4"
let s:nord15_term = "5"
let s:nord8_term = "6"
let s:nord5_term = "7"
let s:nord3_term = "8"
let s:nord12_term = "11"
let s:nord10_term = "12"
let s:nord7_term = "14"
let s:nord6_term = "15"

let s:NMain = [s:nord1_gui, s:nord8_gui, s:nord1_term, s:nord8_term]
let s:NRight = [s:nord1_gui, s:nord9_gui, s:nord1_term, s:nord9_term]
let s:NMiddle = [s:nord5_gui, s:nord3_gui, s:nord5_term, s:nord3_term]
let s:NWarn = [s:nord1_gui, s:nord13_gui, s:nord3_term, s:nord13_term]
let s:NError = [s:nord0_gui, s:nord11_gui, s:nord1_term, s:nord11_term]
let g:airline#themes#nord#palette.normal = airline#themes#generate_color_map(s:NMain, s:NRight, s:NMiddle)
let g:airline#themes#nord#palette.normal.airline_warning = s:NWarn
let g:airline#themes#nord#palette.normal.airline_error = s:NError

let s:IMain = [s:nord1_gui, s:nord14_gui, s:nord1_term, s:nord6_term]
let s:IRight = [s:nord1_gui, s:nord9_gui, s:nord1_term, s:nord9_term]
let s:IMiddle = [s:nord5_gui, s:nord3_gui, s:nord5_term, s:nord3_term]
let s:IWarn = [s:nord1_gui, s:nord13_gui, s:nord3_term, s:nord13_term]
let s:IError = [s:nord0_gui, s:nord11_gui, s:nord1_term, s:nord11_term]
let g:airline#themes#nord#palette.insert = airline#themes#generate_color_map(s:IMain, s:IRight, s:IMiddle)
let g:airline#themes#nord#palette.insert.airline_warning = s:IWarn
let g:airline#themes#nord#palette.insert.airline_error = s:IError

let s:RMain = [s:nord1_gui, s:nord14_gui, s:nord1_term, s:nord14_term]
let s:RRight = [s:nord1_gui, s:nord9_gui, s:nord1_term, s:nord9_term]
let s:RMiddle = [s:nord5_gui, s:nord3_gui, s:nord5_term, s:nord3_term]
let s:RWarn = [s:nord1_gui, s:nord13_gui, s:nord3_term, s:nord13_term]
let s:RError = [s:nord0_gui, s:nord11_gui, s:nord1_term, s:nord11_term]
let g:airline#themes#nord#palette.replace = airline#themes#generate_color_map(s:RMain, s:RRight, s:RMiddle)
let g:airline#themes#nord#palette.replace.airline_warning = s:RWarn
let g:airline#themes#nord#palette.replace.airline_error = s:RError

let s:VMain = [s:nord1_gui, s:nord7_gui, s:nord1_term, s:nord7_term]
let s:VRight = [s:nord1_gui, s:nord9_gui, s:nord1_term, s:nord9_term]
let s:VMiddle = [s:nord5_gui, s:nord3_gui, s:nord5_term, s:nord3_term]
let s:VWarn = [s:nord1_gui, s:nord13_gui, s:nord3_term, s:nord13_term]
let s:VError = [s:nord0_gui, s:nord11_gui, s:nord1_term, s:nord11_term]
let g:airline#themes#nord#palette.visual = airline#themes#generate_color_map(s:VMain, s:VRight, s:VMiddle)
let g:airline#themes#nord#palette.visual.airline_warning = s:VWarn
let g:airline#themes#nord#palette.visual.airline_error = s:VError

let s:IAMain = [s:nord5_gui, s:nord3_gui, s:nord5_term, s:nord3_term]
let s:IARight = [s:nord5_gui, s:nord3_gui, s:nord5_term, s:nord3_term]
let s:IAMiddle = [s:nord5_gui, s:nord1_gui, s:nord5_term, s:nord1_term]
let s:IAWarn = [s:nord1_gui, s:nord13_gui, s:nord3_term, s:nord13_term]
let s:IAError = [s:nord0_gui, s:nord11_gui, s:nord1_term, s:nord11_term]
let g:airline#themes#nord#palette.inactive = airline#themes#generate_color_map(s:IAMain, s:IARight, s:IAMiddle)
let g:airline#themes#nord#palette.inactive.airline_warning = s:IAWarn
let g:airline#themes#nord#palette.inactive.airline_error = s:IAError

let g:airline#themes#nord#palette.normal.airline_term = s:NMiddle
let g:airline#themes#nord#palette.insert.airline_term = s:IMiddle
let g:airline#themes#nord#palette.replace.airline_term = s:RMiddle
let g:airline#themes#nord#palette.visual.airline_term = s:VMiddle
let g:airline#themes#nord#palette.inactive.airline_term = s:IAMiddle

let g:airline_section_error = ''
let g:airline_section_warning = ''
set updatetime=100
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

nnoremap <S-h> :call ToggleHiddenAll()<CR>
command! -nargs=0 Sw w !sudo tee % > /dev/null
