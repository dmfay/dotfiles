" plugin management

set nocompatible
filetype off

set statusline=
set runtimepath^=~/.vim/dein.vim

call dein#begin(expand('~/.vim/plugins'))
call dein#add('Shougo/dein.vim')
call dein#add('Raimondi/delimitMate')
call dein#add('tpope/vim-surround')
call dein#add('simnalamburt/vim-mundo')
call dein#add('pangloss/vim-javascript')
call dein#add('digitaltoad/vim-pug')
call dein#add('airblade/vim-gitgutter')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('ap/vim-css-color')
call dein#add('tpope/vim-unimpaired')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/denite.nvim')
call dein#add('Shougo/vimfiler.vim')
call dein#add('neomake/neomake')
call dein#add('editorconfig/editorconfig-vim')
call dein#add('tpope/vim-commentary')
call dein#add('tommcdo/vim-exchange')
call dein#end()

filetype plugin indent on

if dein#check_install()
  call dein#install()
endif

" plugin config

let g:gitgutter_sign_column_always = 1
let g:gitgutter_max_signs = 500
let g:gitgutter_realtime = 1

let g:delimitMate_expand_cr = 1

if !empty(glob('/usr/bin/python2'))
  let g:python_host_prog = '/usr/bin/python2'
elseif !empty(glob('/usr/local/bin/python'))
  let g:python_host_prog = '/usr/local/bin/python'
endif

if executable('rg')
  call denite#custom#var('file_rec', 'command', ['rg', '--files', '--glob', '!.git'])
  call denite#custom#var('grep', 'command', ['rg'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'final_opts', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading', '--ignore-case'])
else
  call denite#custom#var('file_rec', 'command',
      \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
endif

call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')

call denite#custom#option('default', 'prompt', '>')

let g:neomake_warning_sign = {'text': '?', 'texthl': 'WarningMsg'}
let g:neomake_error_sign = {'text': '!', 'texthl': 'ErrorMsg'}

let g:vimfiler_as_default_explorer = 1

" options
syntax enable

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

if has('nvim')
  set termguicolors
endif

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

" mappings

" up/down in wrapped lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" screen up/down
nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>

" plugins
nnoremap <F2> :VimFilerExplorer<CR>
nnoremap <F4> :MundoToggle<CR>
nnoremap <C-p> :Denite -direction=topleft file_rec<CR>
nnoremap <space>/ :Denite -direction=topleft grep<CR>
nnoremap <space>f :Denite -direction=topleft -no-quit -mode=normal grep:.<CR>
nnoremap <space>s :Denite -direction=topleft -quick-match buffer<CR>

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

" terminal
if has('nvim')
  tnoremap <C-[><C-[> <C-\><C-n>
endif

" for osx
nnoremap ˙ <C-W>h
nnoremap ∆ <C-W>j
nnoremap ˚ <C-W>k
nnoremap ¬ <C-W>l

" copy/paste to/from system clipboard
vnoremap <leader>y  "+y
nnoremap <leader>Y  "+yg_
nnoremap <leader>y  "+y

nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" hide search highlighting
map <Leader>h :set invhls <CR>

" duplicate a selection in visual mode
vmap D y'>p

" select all
nnoremap <C-A> ggvG$

" skip out of block
inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a

" insert a single character
nnoremap <leader>I I <Esc>r
nnoremap <leader>i i <Esc>r
nnoremap <leader>A A <Esc>r
nnoremap <leader>a a <Esc>r

" lint on write/switch
autocmd! BufWritePost,BufEnter * Neomake

" syntax exceptions
au BufReadPost Jenkinsfile set syntax=groovy

" watch for changes
augroup myvimrc
  au!
  au BufWritePost .vimrc,vimrc so $MYVIMRC
augroup END
