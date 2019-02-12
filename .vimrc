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
call plug#end()

map <C-x> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=44

set number
