" Patrick Lu <perf.patrick.lu@gmail.com>
" Last update 02/08/2019
"
" Initialize vim-plug ...
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" Customize Plug ...
" :PlugInstall
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'vim-scripts/AutoComplPop'
Plug 'vim-scripts/taglist.vim'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
call plug#end()

" Customize plugin related settings
map <C-x> :NERDTreeToggle<CR>
map F :NERDTreeFind<CR>
let g:NERDTreeWinSize=44

map tl  :TlistToggle<CR>
let g:Tlist_Ctags_Cmd='/home/patrick/root/usr/bin/ctags-exuberant'
let g:Tlist_Use_Right_Window=1

" Customize vim related settings
set number
colorscheme pablo
set tabstop=4
set shiftwidth=4
set expandtab
" Ref: https://superuser.com/questions/549930/cant-resize-vim-splits-inside-tmux
set mouse=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

" have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" have Vim load indentation rules and plugins according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		    " Hide buffers when they are abandoned
