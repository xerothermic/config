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
call plug#end()

" Customize plugin related settings
map <C-x> :NERDTreeToggle<CR>
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
