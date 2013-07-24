"键盘vim模式
set nocompatible
"语法高亮
set syntax=on
"？
set confirm
"自动缩进
set autoindent
set cindent
"显示行号
set number
"突出当前行
set nocursorline
"tab键宽度
set tabstop=4
"统一缩进
"set shiftwidth=4
"set softtabstop=4
set shiftwidth=2
set softtabstop=2
"用空格代替tab
set expandtab
"历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set fileformat=unix
set fileformats=unix,dos
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"行宽80
set textwidth=79
"--------------------------------------------------------
" Vundle
"--------------------------------------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
"================== Syntax ====================
Bundle 'dagwieers/asciidoc-vim'
"Bundle 'confluencewiki.vim'
Bundle 'html5.vim'
Bundle 'JavaScript-syntax'
Bundle 'xml.vim'
Bundle 'JSON.vim'
Bundle 'python.vim--Vasiliev'
"C和C++已下载并修改
"Bundle 'google.vim'
"Thrift已下载
"================== Indent ====================
Bundle 'Javascript-Indentation'
Bundle 'mako.vim--Torborg'
Bundle 'gg/python.vim'
Bundle 'Indent-Guides'
Bundle 'IndentAnything'
"================== Color  ====================
Bundle 'Colour-Sampler-Pack'
Bundle 'altercation/vim-colors-solarized'
"================== Plugin ====================
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/powerline'
Bundle 'rosenfeld/conque-term'
Bundle 'a.vim'
Bundle 'matchit.zip'
Bundle 'calendar.vim'
"Bundle 'mru.vim'
Bundle 'tpope/vim-surround'
Bundle 'corntrace/bufexplorer'
"Bundle 'taglist.vim'
Bundle 'majutsushi/tagbar'
" Bundle 'majutsushi/tagbar'
Bundle 'vcscommand.vim'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-markdown'
Bundle 'Lokaltog/vim-easymotion'
" Bundle 'godlygeek/tabular'
" Bundle 'wincent/Command-T'
Bundle 'Raimondi/delimitMate'
Bundle 'terryma/vim-multiple-cursors'
"需要Vim7.3+ Bundle 'myusuf3/numbers.vim'
" 辅助neocomplcache
Bundle 'Shougo/vimproc.vim'
" Complete
" Bundle 'vim-scripts/AutoComplPop'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'OmniCppComplete'
Bundle 'Shougo/neosnippet.vim'
Bundle 'honza/vim-snippets'
Bundle 'spf13/snipmate-snippets'
" 占用tab Bundle 'msanders/snipmate.vim'
" 编译成问题 Bundle 'Valloric/YouCompleteMe'
" Languages
Bundle 'vim-scripts/c.vim'
"Bundle 'vim-scripts/pylint.vim'
Bundle 'klen/python-mode'
"Bundle 'mbbill/code_complete'
"Bundle 'mbbill/echofunc'
Bundle 'kshenoy/vim-signature'
"Bundle 'tpope/vim-fugitive'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
filetype plugin indent on     " iequired!
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"清除背景
"hi clear Normal
"hi clear
"设置
set background=dark
"color mydesert
let g:solarized_termtrans=1
"let g:solarized_degrade=1
"let g:solarized_contrast='high'
"let g:solarized_visibility='low'
color solarized
"状态栏
set laststatus=2
"set statusline+=%f
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
"highlight User1 ctermfg=Red ctermbg=LightGray
"highlight User2 ctermfg=Black ctermbg=LightYellow
"highlight User3 ctermfg=Black ctermbg=LightBlue
"highlight User4 ctermfg=Black ctermbg=LightGreen
"highlight User5 ctermfg=Black ctermbg=LightMagenta
"highlight User6 ctermfg=Black ctermbg=LightCyan
"highlight User7 ctermfg=Black ctermbg=LightGray
""""set statusline=%1*%F%2*%m%r%h%w\ %3*[%{&ff}]\ %4*[%Y]\ %5*[A-%03.3b(0x%02.2B)]\ %6*[%l,%c%V]%7*[%p%%/%L]
"RECENTLY"set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [A-%03.3b(0x%02.2B)]\ [%l,%c%V]\ [%p%%]

"右下角显示光标位置
set ruler
"侦测文件类型，载入插件/缩进
filetype plugin indent on
syntax on
"类型
au BufRead,BufNewFile *.thrift setfiletype thrift
au BufRead,BufNewFile *.json setfiletype json
au BufRead,BufNewFile YBUILD set filetype=python
"界限
"colorcolumn 需要Vim7.3+
"set colorcolumn=80
au BufRead,BufNewFile *.c,*.cpp,*.cc,*.h,*.py let w:m1=matchadd('Error', '\%>80v.\+', -1)
"高亮匹配括号
set showmatch
"折叠
"set foldenable              " 开始折叠
"set foldmethod=syntax       " 设置语法折叠
"set foldcolumn=0            " 设置折叠区域的宽度
"setlocal foldlevel=1        " 设置折叠层数为1
set foldclose=all           " 设置为自动关闭折叠
"Sourced from vim tip: http://vim.wikia.com/wiki/Keep_folds_closed_while_inserting_text
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif
" Python部分，来自Python源代码
let python_highlight_all=1
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=8
au BufRead,BufNewFile *.py,*.pyw set expandtab
" Use the below highlight group when displaying bad whitespace is desired
highlight BadWhitespace ctermbg=red guibg=red
" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/
au BufNewFile *.py,*.pyw set fileformat=unix

"autocmd
"autocmd FileType python compiler pylint

"-----------------------------------------------------------------
" plugin - a.vim
"-----------------------------------------------------------------
let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,sfr:../public,sfr:../internal'
let g:alternateNoDefaultAlternate = 1
"-----------------------------------------------------------------
" plugin - taglist.vim  查看函数列表，需要ctags程序
" F4 打开隐藏taglist窗口
"-----------------------------------------------------------------
nnoremap <silent><F4> :TlistToggle<CR>
"let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
let Tlist_Show_One_File = 1       "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1     "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         " 在右侧窗口中显示taglist窗口
let Tlist_File_Fold_Auto_Close=1       "自动折叠当前非编辑文件的方法列表
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Process_File_Always = 1
let Tlist_Display_Prototype = 0
let Tlist_Compact_Format = 1

"-----------------------------------------------------------------
" plugin - NERD_tree.vim 以树状方式浏览系统中的文件和目录
" :ERDtree 打开NERD_tree         :NERDtreeClose    关闭NERD_tree
" o 打开关闭文件或者目录         t 在标签页中打开
" T 在后台标签页中打开           ! 执行此文件
" p 到上层目录                   P 到根目录
" K 到第一个节点                 J 到最后一个节点
" u 打开上层目录                 m 显示文件系统菜单（添加、删除、移动操作）
" r 递归刷新当前目录             R 递归刷新当前根目录
"-----------------------------------------------------------------
if exists("loaded_nerd_tree")
  " F3 NERDTree 切换
  map <F3> :NERDTreeToggle<CR>
  imap <F3> <ESC>:NERDTreeToggle<CR>
  set autochdir
  set tags=tags,./tags,./../tags,./../../tags,./../../../tags,./../../../../tags,./../../../../../tags,./../../../../../../tags,./../../../../../../../tags,./../../../../../../../../tags,./../../../../../../../../../tags,./../../../../../../../../../../tags,./../../../../../../../../../../../tags,/usr/include/tags
  map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
endif
"-----------------------------------------------------------------
" plugin - Python-mode
" https://github.com/klen/python-mode
"-----------------------------------------------------------------
let g:pymode_folding = 0
let g:pymode_rope = 0
let g:pymode_lint = 0
"-----------------------------------------------------------------
" plugin - vim-powerline
" https://github.com/Lokaltog/vim-powerline
"-----------------------------------------------------------------
if exists('g:Powerline_loaded')
  set t_Co=256
  "fancy要求进行font patch，或者直接使用patch过的字体。
  let g:Powerline_symbols = 'fancy'
  let g:Powerline_stl_path_style = 'short'
endif
"-----------------------------------------------------------------
" plugin - powerline
"-----------------------------------------------------------------
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
"-----------------------------------------------------------------
" plugin - neocomplcache.vim
"-----------------------------------------------------------------
if exists('g:loaded_neocomplcache')
  " Disable AutoComplPop.
  let g:acp_enableAtStartup = 0
  " Use neocomplcache.
  let g:neocomplcache_enable_at_startup = 1
  " Use smartcase.
  let g:neocomplcache_enable_smart_case = 1
  " Set minimum syntax keyword length.
  let g:neocomplcache_min_syntax_length = 3
  let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

  " Enable heavy features.
  " Use camel case completion.
  "let g:neocomplcache_enable_camel_case_completion = 1
  " Use underbar completion.
  "let g:neocomplcache_enable_underbar_completion = 1

  " Define dictionary.
  let g:neocomplcache_dictionary_filetype_lists = {
        \ 'default' : '',
        \ 'vimshell' : $HOME.'/.vimshell_hist',
        \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

  " Define keyword.
  if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
  endif
  let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

  " Plugin key-mappings.
  inoremap <expr><C-g>     neocomplcache#undo_completion()
  inoremap <expr><C-l>     neocomplcache#complete_common_string()

  " Recommended key-mappings.
  " <CR>: close popup and save indent.
  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  function! s:my_cr_function()
    return neocomplcache#smart_close_popup() . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
  endfunction
  " <TAB>: completion.
  " inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  " <C-h>, <BS>: close popup and delete backword char.
  inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
  inoremap <expr><C-y>  neocomplcache#close_popup()
  inoremap <expr><C-e>  neocomplcache#cancel_popup()
  " Close popup by <Space>.
  inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() . "\<SPACE>" : "\<Space>"

  " For cursor moving in insert mode(Not recommended)
  "inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
  "inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
  "inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
  "inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
  " Or set this.
  " let g:neocomplcache_enable_cursor_hold_i = 1
  " Or set this.
  "let g:neocomplcache_enable_insert_char_pre = 1

  " AutoComplPop like behavior.
  "let g:neocomplcache_enable_auto_select = 1

  " Shell like behavior(not recommended).
  "set completeopt+=longest
  "let g:neocomplcache_enable_auto_select = 1
  "let g:neocomplcache_disable_auto_complete = 1
  "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

  " Enable heavy omni completion.
  if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
  endif
  let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
  let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
  let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

  " For perlomni.vim setting.
  " https://github.com/c9s/perlomni.vim
  let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
endif
"--------------------------------------------------------------
" Plugin : Omnicppcomplete
"--------------------------------------------------------------
let OmniCpp_SelectFirstItem = 0
"--------------------------------------------------------------
" Plugin : neosnippet
"--------------------------------------------------------------
if exists('g:loaded_neosnippet')
  " Plugin key-mappings.
  imap <C-k>     <Plug>(neosnippet_expand_or_jump)
  smap <C-k>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-k>     <Plug>(neosnippet_expand_target)

  " SuperTab like snippets behavior.
  imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
        \ "\<Plug>(neosnippet_expand_or_jump)"
        \: pumvisible() ? "\<C-n>" : "\<TAB>"
  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
        \ "\<Plug>(neosnippet_expand_or_jump)"
        \: "\<TAB>"

  " For snippet_complete marker.
  if has('conceal')
    set conceallevel=2 concealcursor=i
  endif

  " If you want to use a different collection of snippets than the built-in ones,
  " then you can set a path to the snippets with the
  " g:neosnippet#snippets_directory variable (e.g Honza's Snippets)
  " Enable snipMate compatibility feature.
  let g:neosnippet#enable_snipmate_compatibility = 1
  " Tell Neosnippet about the other snippets
  let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
endif
"--------------------------------------------------------------
" Plugin : CtrlP
"--------------------------------------------------------------
let g:ctrlp_working_path_mode = 'raw'
"--------------------------------------------------------------
" Plugin : Indent-Guides
"--------------------------------------------------------------
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=none
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234
