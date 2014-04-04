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

"set number
set cindent
set expandtab
set tabstop=4
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

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set ignorecase when searching
set ignorecase

" Force save current file with root permission
map <leader>sudosave :w !sudo tee %

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








