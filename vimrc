" ================= Vundle Start ==================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" =========== Bundle install plugins start
Plugin 'derekwyatt/vim-scala'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'solarnz/thrift.vim'
" check syntax error
"Plugin 'scrooloose/syntastic'
"Plugin 'mileszs/ack.vim'
Plugin 'jlanzarotta/bufexplorer'
" code color
Plugin 'tomasr/molokai'
" comment code
Plugin 'scrooloose/nerdcommenter'
" file template
Plugin 'aperezdc/vim-template'



" Snippet: start
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" Snippet: end
" =========== Bundle install plugins end

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ================== Vundle End ======================================

"用于设置自动格式化规则
"t: 根据textwidth来自动换行
"c: 如果是注释行，则根据textwidth自动换行，且在行首自动加注释标记
"r: 在插入模式下键入Enter会在新的一行行首自动添加注释标记
"o: 在普通模式下键入o或O，则会在新的一行行首自动添加注释标记
"q: 支持使用gq来格式化注释
"a: 在添加和删除文本时，对段落自动进行格式化
"n: 格式化文本时，智能处理编号列表
"2: 第二行缩进(默认为是第一行缩进)
"1: 单字符单词的后面不要折行
"m: 对中文等多字符语言更智能的换行
"M: 在拼接两行时，如果行尾或行首为多字节字符，则拼接时不要在中间加空格
"l: 在插入模式下不换行
"默认值为tcq
set formatoptions=tcqmM

syntax on
colorscheme molokai

" To enable 256 colors in vim
set t_Co=256

" Show line number
"set number

" C language indent
set cindent

" Convert tab to spaces
"set expandtab

" Default Tab size
set tabstop=4

" << and >> use spaces
set shiftwidth=4

" set highlight current line
" set cursorline

" Show current line number and column number
set ruler

" Showing command in status line
set showcmd

" To use plugin
filetype plugin on
filetype indent on

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
set fileencodings=utf-8,gbk,gb18030,utf-16,big5

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set ignorecase when searching
set ignorecase

" Force save current file with root permission
" command map :\w!! to w !sudo tee %
cmap <Leader>w!! w !sudo tee %
" cmap w!! w !sudo tee %

" Turn it to hexeditor
" Make a binary file to hexadecimal file
"cmap bin %!xxd
cmap <Leader>bin %!xxd

" Map Ctrl-l to w (next word)
map <c-l> w

" Map Ctrl-h to b (back word)
map <c-h> b

" Map Ctrl-j to Ctrl-f (page down)
map <c-j> <c-f>

" Map Ctrl-k to Ctrl-b (page up)
map <c-k> <c-b>

" Set no flickering cursor
set gcr=a:block-blinkon0

" To move to head of line
" Insert Mode Ctrl-a
imap <C-a> <C-o>^

" To move to end of line
" Insert Mode Ctrl-e
imap <C-e> <C-o>$

" To change vim mode
set backspace=indent,eol,start


" ==========Begin==========
" Code Comments Plugin:
" Description:
" Visual Mode \cc add comments
" Visual Mode \cu delete comments
" ==========End==========

" ==========Begin==========
" Indent Settings:
"
" Insert Mode
"     Ctrl-t Right indent
"     Ctrl-d Left indent
"
" Command Mode
"     >> Left indent
"     << Right indent
"     n<<, n>> Multiply line indent
"
" Visual Mode
"     > Left indent
"     < Right indent
"     n<, n> Multiply line indent
"     BTW: = autoindent
" ==========End==========

" ==========Begin==========
" Close Open MarchParen:
" NoMatchParen
" DoMatchParen
" ==========End==========

" ==========Begin==========
" Autocomplete:
"
" Description:
"
" Insert Mode
"     Ctrl-n or Ctrl-p
"
" Omni Complete:
" Description:
"
" Insert Mode
"     Ctrl-x Ctrl-o
"
" Use enter to select current in complete mode
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
" ==========End==========

" ==========Begin========
" Split Window:
"
" Description:
"     Ctrl-w Ctrl-v To split Left/Right windows
"     Ctrl-w Ctrl-w To move next window
"     Ctrl-w Ctrl-l To move right window
"     Ctrl-w Ctrl-h To move left window
" ==========End==========

" ==========Begin========
" Bufexplorer:
" Description:
"     \be Browse bufexplorer
" ==========End==========

" ==========Begin========
" Ack:
" Description:Plugin that integrates ack with Vim
"     :Ack search_string
" ==========End==========

" ==========Begin========
" VimIndentGuides: config
"
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=235
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=237
"hi IndentGuidesOdd guibg=red ctermbg=235
"hi IndentGuidesEven guibg=green ctermbg=237
hi IndentGuidesOdd  ctermbg=235
hi IndentGuidesEven ctermbg=237
" ==========End==========

" ==========Begin========
" Language Syntax:
" set tab size in different file
autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType scala set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType java set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType cpp set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType make set noexpandtab
autocmd FileType xml set tabstop=4|set shiftwidth=4|set expandtab
" ==========End==========


" ==========Begin========
" List:
" use list to show enter, tab, trail and so on
" :set list 
" :set nolist
" eol = end of line
" tab = tab
" trail = comma at end of line
" extends = I dont know
" precedes = I dont know
set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<
"cmap <Leader>lschars 'set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<'
" ==========End==========


" ==========Begin========
" Template:
" vim-template setting
"let g:templates_plugin_loaded = 1 " to skip loading of this plugin.
let g:templates_no_autocmd = 1 " to disable automatic insertion of template in new files.
let g:templates_debug = 0 " to have vim-template output debug information
let g:templates_fuzzy_start = 1 " to be able to name templates with implicit fuzzy matching at the start of a template name. For example a template file named template:.c would match test.cpp.
"let g:templates_tr_in = [ '.', '_', '?' ]
" ==========End==========



" ==========Begin========
" Foldmethod:
" open or close code block
" 
" foldmethod option:
" manual – folds must be defined by entering commands
" indent – groups of lines with the same indent form a fold
" syntax – folds are defined by syntax highlighting
" expr – folds are defined by a user-defined expression
" marker – special characters can be manually or automatically added to your text to flag the start and end of folds
" diff – used to fold unchanged text when viewing differences
"
" :set foldmethod=manual
"
" zc: close code block
" zo: open code block










