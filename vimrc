set number
set nocompatible
syntax on
set showmode
set showcmd
set t_Co=256
filetype indent on
set expandtab
set showmatch
set hlsearch
set noerrorbells
set visualbell
set autoread

set backup
set backupdir   =$HOME/.vim/files/backup//
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo//
set viminfo     ='99,n$HOME/.vim/files/info/viminfo

let $BUNDLE = expand("$HOME/.dotfiles/data/vimdata/bundle")
let $PLUG_DIR = expand("$BUNDLE/vim-plug")

if empty(glob(expand("$PLUG_DIR/plug.vim")))
          silent !curl -fLo $PLUG_DIR/plug.vim --create-dirs
              \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
            autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif
source $PLUG_DIR/plug.vim

call plug#begin(expand($BUNDLE))
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
call plug#end()

set laststatus=2
let g:airline#extensions#tabline#enabled=1 
"let g:airline_theme='simple'
let g:airline_highlighting_cache = 1

map <C-n> :NERDTreeToggle<CR>

