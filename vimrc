syntax on
colorscheme monokai
"set number
set cindent
set expandtab
set tabstop=4 
set shiftwidth=4

" set highlight current line
set cursorline

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

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
