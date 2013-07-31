"-----------------------------------------------------------------------------
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
"================== Syntax ====================
Bundle 'dagwieers/asciidoc-vim'
"Bundle 'confluencewiki.vim'
Bundle 'html5.vim'
Bundle 'JavaScript-syntax'
Bundle 'xml.vim'
Bundle 'JSON.vim'
Bundle 'python.vim--Vasiliev'
Bundle 'hail2u/vim-css3-syntax'
"(Already Download) Bundle 'google.vim'
"================== Indent ====================
"Bundle 'Indent-Guides'
if 1
  let g:indent_guides_enable_on_vim_startup=1
  let g:indent_guides_auto_colors=0
  if &background == "black"
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=233
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234
  endif
endif
Bundle 'adonis0147/prettyGuides'
Bundle 'Javascript-Indentation'
Bundle 'mako.vim--Torborg'
Bundle 'gg/python.vim'
Bundle 'IndentAnything'
"================== Color  ====================
Bundle 'Colour-Sampler-Pack'
Bundle 'altercation/vim-colors-solarized'
let g:solarized_termtrans=1
"let g:solarize_termcolors=256
"let g:solarized_degrade=1
let g:solarized_italic=0
"let g:solarized_contrast='high'
"let g:solarized_visibility='high'
"let g:solarized_hitrail=1
"================== Plugin ====================
Bundle 'a.vim'
if 1
  let g:alternateSearchPath='sfr:../source,sfr:../src,sfr:../include,sfr:../inc,sfr:../public,sfr:../internal'
  let g:alternateNoDefaultAlternate=1
endif
"Bundle 'sudo.vim'
Bundle 'SudoEdit.vim'
Bundle 'scrooloose/nerdtree'
if 1
  nmap <Leader>t :NERDTreeToggle<CR>
  let NERDChristmasTree=0
  let NERDTreeWinSize=30
  let NERDTreeChDirMode=2
  let NERDTreeShowBookmarks=1
endif
Bundle 'zhaocai/GoldenView.Vim'
Bundle 'scrooloose/nerdcommenter'
"(Old) Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/powerline'
if 1
  set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
  set t_Co=256
  let g:Powerline_symbols='fancy'
  let g:Powerline_stl_path_style='full'
endif
Bundle 'rosenfeld/conque-term'
Bundle 'matchit.zip'
Bundle 'calendar.vim'
"Bundle 'mru.vim'
Bundle 'tpope/vim-surround'
Bundle 'corntrace/bufexplorer'
set autochdir
set tags=/usr/include/tags,tags,./tags;
"nmap <Leader>c :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
:command CTAGS !ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
"Bundle 'taglist.vim'
if 0
  nnoremap <silent><F4> :TlistToggle<CR>
endif
Bundle 'majutsushi/tagbar'
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
Bundle 'vcscommand.vim'
Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1
let g:syntastic_cpp_checkers=['cpplint']
let g:syntastic_cpp_cpplint_args='--verbose=0'
Bundle 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode='raw'
Bundle 'tpope/vim-markdown'
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader>'
" Bundle 'wincent/Command-T'
Bundle 'Raimondi/delimitMate'
Bundle 'terryma/vim-multiple-cursors'
"Need Vim7.3+ Bundle 'myusuf3/numbers.vim'
" For neocomplcache
Bundle 'Shougo/vimproc.vim'
" Complete
" Bundle 'vim-scripts/AutoComplPop'
Bundle 'Shougo/neocomplcache.vim'
if 1
  " Disable AutoComplPop.
  let g:acp_enableAtStartup=0
  let g:neocomplcache_enable_at_startup=1
  let g:neocomplcache_enable_smart_case=1
  "let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
  "let g:neocomplcache_enable_camel_case_completion = 1
  "let g:neocomplcache_enable_underbar_completion = 1
  let g:neocomplcache_dictionary_filetype_lists={
        \ 'default' : '',
        \ 'vimshell' : $HOME.'/.vimshell_hist',
        \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
  " if !exists('g:neocomplcache_keyword_patterns')
  "   let g:neocomplcache_keyword_patterns = {}
  " endif
  " let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

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

  " AutoComplPop like behavior.
  "let g:neocomplcache_enable_auto_select = 1

  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

  " Enable heavy omni completion.
  "if !exists('g:neocomplcache_omni_patterns')
  "  let g:neocomplcache_omni_patterns = {}
  "endif
  "let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
  "let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
  "let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
  " For perlomni.vim setting.
  "let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
endif
Bundle 'OmniCppComplete'
let OmniCpp_SelectFirstItem=0
Bundle 'Shougo/neosnippet.vim'
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
  let g:neosnippet#enable_snipmate_compatibility=1
  let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
endif
Bundle 'honza/vim-snippets'
Bundle 'spf13/snipmate-snippets'
" 占用tab Bundle 'msanders/snipmate.vim'
" 编译成问题 Bundle 'Valloric/YouCompleteMe'
"Bundle 'Rip-Rip/clang_complete'
"Bundle 'ervandew/supertab'
"Bundle 'mattn/zencoding-vim'
" Languages
Bundle 'c.vim'
Bundle 'jdevera/vim-stl-syntax'
" C++11 Syntax
Bundle 'vim-jp/cpp-vim'
"Bundle 'vim-scripts/pylint.vim'
Bundle 'klen/python-mode'
let g:pymode_folding=0
let g:pymode_rope=0
let g:pymode_lint=0
"Bundle 'mbbill/code_complete'
"Bundle 'mbbill/echofunc'
Bundle 'kshenoy/vim-signature'
Bundle 'tpope/vim-fugitive'
Bundle 'bronson/vim-trailing-whitespace'
"------------------------------------------------------------------------------
"================== file ====================
set fileformat=unix
set fileformats=unix,dos
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
filetype plugin indent on
syntax on
au BufRead,BufNewFile *.thrift setfiletype thrift
au BufRead,BufNewFile *.json setfiletype json
au BufRead,BufNewFile YBUILD set filetype=python
let c_space_errors=1
"================== color ====================
"hi clear Normal 清除背景
set background=dark
"color mydesert
color solarized
"================== cursor & line & other +===
set cursorline "cursorcolumn
set ruler      "show cursor position numbers
set number     "line number"
set list
set textwidth=79
"need vim7.3+ set colorcolumn=80
au BufRead,BufNewFile *.c,*.cpp,*.cc,*.h,*.py let w:m1=matchadd('Error', '\%>80v.\+', -1)
"================== search ===================
set ignorecase
set smartcase
set hlsearch
set incsearch
set gdefault
"================== edit =====================
set nocompatible
set history=1000
set confirm
set backspace=indent,eol,start
set report=0
set nowrap
set showmatch
set showcmd
set title
"set relativenumber
set nobackup
set noswapfile
"================== indent ===================
set autoindent
set smartindent
set cindent
set tabstop=4
"set shiftwidth=4
"set softtabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
"================== fold =====================
set nofoldenable  " disable folding"
"set foldenable              " 开始折叠
"set foldmethod=syntax       " 设置语法折叠
"set foldcolumn=0            " 设置折叠区域的宽度
"setlocal foldlevel=1        " 设置折叠层数为1
"set foldclose=all           " 设置为自动关闭折叠
"================== statusline ===============
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
"set statusline=%1*%F%2*%m%r%h%w\ %3*[%{&ff}]\ %4*[%Y]\ %5*[A-%03.3b(0x%02.2B)]\ %6*[%l,%c%V]%7*[%p%%/%L]
"set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [A-%03.3b(0x%02.2B)]\ [%l,%c%V]\ [%p%%]
"================== command =================
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa
"================== other ===================
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
"au BufNewFile *.py,*.pyw set fileformat=unix
