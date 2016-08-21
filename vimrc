" plugin management

set nocompatible              " be iMproved, required
filetype off

set statusline=
set runtimepath^=~/.vim/dein.vim

call dein#begin(expand('~/.vim/plugins'))
call dein#add('Shougo/dein.vim')
call dein#add('Raimondi/delimitMate')
call dein#add('tpope/vim-surround')
call dein#add('simnalamburt/vim-mundo')
call dein#add('pangloss/vim-javascript')
call dein#add('airblade/vim-gitgutter')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('ap/vim-css-color')
call dein#add('tpope/vim-unimpaired')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/unite.vim')
call dein#add('scrooloose/syntastic')
call dein#end()

filetype plugin indent on

if dein#check_install()
  call dein#install()
endif

" config
syntax enable

let g:gitgutter_sign_column_always = 1
let g:gitgutter_max_signs = 500  " default value
let g:gitgutter_realtime = 1

let g:delimitMate_expand_cr = 1

let g:python_host_prog = '/usr/bin/python2'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:unite_source_rec_async_command =
    \ ['ag', '--follow', '--nogroup', '--nocolor', '--hidden', '-g', '']

call unite#filters#matcher_default#use(['matcher_fuzzy'])

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_stl_format = 'syntax error line %F (%e err %w warn)'

" options
set autoindent
set autoread
set background=dark
set backspace=2
set foldcolumn=1
set ignorecase
set number
set smartcase
set expandtab
set shiftwidth=2
set tabstop=2
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
set ruler
set mousefocus
set foldmethod=syntax
set foldlevelstart=20

" colors
colorscheme caput-mortuum

" commands
command! W w !sudo tee % > /dev/null
command! C w !xsel -i -b
command! CC %w !xsel -i -b
command! P r !xsel -o -b
command! J %!python -m json.tool

" functions
source ~/.vim/functions/whitespace.vim
source ~/.vim/functions/kwbd.vim

filetype plugin indent on

" mappings

" up/down in wrapped lines
nnoremap j gj
nnoremap k gk

" plugins
nnoremap <F4> :MundoToggle<CR>
nnoremap <C-p> :Unite file_rec/async<CR>
nnoremap <space>/ :Unite grep:.<CR>
nnoremap <space>s :Unite -quick-match buffer<CR>

" split window
nmap <leader>swh :topleft  vnew<CR>
nmap <leader>swl :botright vnew<CR>
nmap <leader>swk :topleft  new<CR>
nmap <leader>swj :botright new<CR>

" split buffer
nmap <leader>sh  :leftabove  vnew<CR>
nmap <leader>sl  :rightbelow vnew<CR>
nmap <leader>sk  :leftabove  new<CR>
nmap <leader>sj  :rightbelow new<CR>

" split navigation
imap <C-w> <C-o><C-w>

nnoremap <A-h> <C-W>h
nnoremap <A-j> <C-W>j
nnoremap <A-k> <C-W>k
nnoremap <A-l> <C-W>l

" Hide search highlighting
map <Leader>h :set invhls <CR>

" Duplicate a selection
" Visual mode: D
vmap D y'>p

" conveniences
inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a

" watch for changes
augroup myvimrc
  au!
  au BufWritePost .vimrc,vimrc so $MYVIMRC
augroup END
