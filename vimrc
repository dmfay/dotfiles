" plugin management

set nocompatible
filetype off

set statusline=
set runtimepath^=~/.vim/dein.vim

call dein#begin(expand('~/.vim/plugins'))
call dein#add('Shougo/dein.vim')
call dein#add('Raimondi/delimitMate')
call dein#add('Shougo/denite.nvim')
call dein#add('Shougo/vimfiler.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('airblade/vim-gitgutter')
call dein#add('ap/vim-css-color')
call dein#add('editorconfig/editorconfig-vim')
call dein#add('mzlogin/vim-markdown-toc')
call dein#add('neomake/neomake')
call dein#add('simnalamburt/vim-mundo')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('tfnico/vim-gradle')
call dein#add('tommcdo/vim-exchange')
call dein#add('tomtom/tcomment_vim')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-unimpaired')

" syntax
call dein#add('derekwyatt/vim-scala')
call dein#add('digitaltoad/vim-pug')
call dein#add('groenewege/vim-less')
call dein#add('ingydotnet/yaml-vim')
call dein#add('mxw/vim-jsx')
call dein#add('pangloss/vim-javascript')
call dein#end()

filetype plugin indent on

if dein#check_install()
  call dein#install()
endif

" plugin config

set signcolumn=yes
let g:gitgutter_max_signs = 500
let g:gitgutter_realtime = 1

let g:delimitMate_expand_cr = 1

let g:javascript_plugin_jsdoc = 1

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

" allow grep source filtering on either path or text
call denite#custom#source('grep', 'converters', ['converter_abbr_word'])

call denite#custom#map('insert', '<C-h>', '<denite:move_to_first_line>', 'noremap')
call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<C-l>', '<denite:move_to_last_line>', 'noremap')

call denite#custom#option('default', 'prompt', '>')
call denite#custom#option('default', 'cursor_wrap', v:true)

let g:neomake_warning_sign = {'text': '?', 'texthl': 'WarningMsg'}
let g:neomake_error_sign = {'text': '!', 'texthl': 'ErrorMsg'}
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_sh_enabled_makers = ['shellcheck']

let g:vimfiler_as_default_explorer = 1

" syntax settings

syntax enable
let groovy_fold='true'

" options

" general workspace
set clipboard=unnamedplus
set cursorline
set background=dark
set number
set scrolloff=3             " start scrolling 3 lines before border
set updatetime=250
set backspace=2
set lazyredraw              " update after finishing macro execution etc
set ruler

" buffer management
set autoread        " reload changed files from disk
set hidden          " track hidden buffers
set ttimeoutlen=100 " for alt-hjkl buffer switching: https://github.com/neovim/neovim/issues/5792

" tab stuff
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set smarttab

" menus
set wildmenu
set wildmode=longest,list
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp

" folding
set foldcolumn=1
set foldmethod=syntax
set foldlevelstart=20

" searching
set ignorecase
set smartcase

" mouse
set mousefocus
set mouse=a

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
source ~/.vim/functions/unfunc.vim

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
nnoremap <space>s :Denite -direction=topleft buffer<CR>

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
  let g:terminal_scrollback_buffer_size = 10000
  tnoremap <C-[><C-[> <C-\><C-n>
endif

" for osx
nnoremap ˙ <C-W>h
nnoremap ∆ <C-W>j
nnoremap ˚ <C-W>k
nnoremap ¬ <C-W>l

" hide search highlighting
map <Leader>\ :noh<CR>

" duplicate a selection in visual mode
vmap D y'>p

" select all
nnoremap <C-A> ggvG$

" insert a single character
nnoremap <leader>I I <Esc>r
nnoremap <leader>i i <Esc>r
nnoremap <leader>A A <Esc>r
nnoremap <leader>a a <Esc>r

"lint
nnoremap <space>n :lnext<CR>
nnoremap <space>p :lprev<CR>

" lint on write/switch
autocmd! BufWritePost,BufEnter * Neomake

" syntax customizations
autocmd FileType groovy setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType java setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd BufReadPost Jenkinsfile set syntax=groovy
autocmd BufReadPost .eslintrc set syntax=json

" watch for changes
augroup myvimrc
  au!
  au BufWritePost .vimrc,vimrc so $MYVIMRC
augroup END
