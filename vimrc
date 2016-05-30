" plugin management

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" github: Plugin 'tpope/vim-fugitive'
" local git: Plugin 'file:///home/gmarik/path/to/plugin'
" other git: Plugin 'git://git.wincent.com/command-t.git'
" subdirectory in git repo (pass path to subdir): Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts.org: Plugin 'L9'
" install under a different name to avoid conflicts: Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'tpope/vim-surround'
Plugin 'gundo'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ap/vim-css-color'
Plugin 'godlygeek/csapprox'
Plugin 'tpope/vim-unimpaired'
Plugin 'dmfay/vim-csexact'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" config
syntax enable

let g:gitgutter_sign_column_always = 1
let g:gitgutter_max_signs = 500  " default value
let g:gitgutter_realtime = 1

" options
set autoindent
set autoread
set background=dark
set foldcolumn=1
set ignorecase
set number
set smartcase
set expandtab
set shiftwidth=2
set softtabstop=2
set smarttab
set hidden
set wildmenu
set wildmode=longest,list
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp
set updatetime=250

" colors
colorscheme caput-mortuum

" commands
command W w !sudo tee % > /dev/null

" functions
" delete trailing whitespace
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

filetype plugin indent on

" mappings
nnoremap <F4> :GundoToggle<CR>
