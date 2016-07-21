" plugin management

set nocompatible              " be iMproved, required
filetype off

set runtimepath^=~/.vim/dein.vim

call dein#begin(expand('~/.vim/plugins'))

call dein#add('Shougo/dein.vim')
call dein#add('tpope/vim-surround')
call dein#add('simnalamburt/vim-mundo')
call dein#add('pangloss/vim-javascript')
call dein#add('airblade/vim-gitgutter')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('ap/vim-css-color')
call dein#add('tpope/vim-unimpaired')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/unite.vim')
call dein#end()

filetype plugin indent on

" config
syntax enable

let g:gitgutter_sign_column_always = 1
let g:gitgutter_max_signs = 500  " default value
let g:gitgutter_realtime = 1

let g:python_host_prog = '/usr/bin/python2'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:unite_source_rec_async_command =
    \ ['ag', '--follow', '--nogroup', '--nocolor', '--hidden', '-g', '']

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

" colors
colorscheme caput-mortuum

" commands
command! W w !sudo tee % > /dev/null
command! C w !xsel -i -b
command! CC %w !xsel -i -b
command! P r !xsel -o -b

" functions
" delete trailing whitespace
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

"here is a more exotic version of my original Kwbd script
"delete the buffer; keep windows; create a scratch buffer if no buffers left
func! s:Kwbd(kwbdStage)
  if(a:kwbdStage == 1)
    if(!buflisted(winbufnr(0)))
      bd!
      return
    endif
    let s:kwbdBufNum = bufnr("%")
    let s:kwbdWinNum = winnr()
    windo call s:Kwbd(2)
    execute s:kwbdWinNum . 'wincmd w'
    let s:buflistedLeft = 0
    let s:bufFinalJump = 0
    let l:nBufs = bufnr("$")
    let l:i = 1
    while(l:i <= l:nBufs)
      if(l:i != s:kwbdBufNum)
        if(buflisted(l:i))
          let s:buflistedLeft = s:buflistedLeft + 1
        else
          if(bufexists(l:i) && !strlen(bufname(l:i)) && !s:bufFinalJump)
            let s:bufFinalJump = l:i
          endif
        endif
      endif
      let l:i = l:i + 1
    endwhile
    if(!s:buflistedLeft)
      if(s:bufFinalJump)
        windo if(buflisted(winbufnr(0))) | execute "b! " . s:bufFinalJump | endif
      else
        enew
        let l:newBuf = bufnr("%")
        windo if(buflisted(winbufnr(0))) | execute "b! " . l:newBuf | endif
      endif
      execute s:kwbdWinNum . 'wincmd w'
    endif
    if(buflisted(s:kwbdBufNum) || s:kwbdBufNum == bufnr("%"))
      execute "bd! " . s:kwbdBufNum
    endif
    if(!s:buflistedLeft)
      set buflisted
      set bufhidden=delete
      set buftype=
      setlocal noswapfile
    endif
  else
    if(bufnr("%") == s:kwbdBufNum)
      let prevbufvar = bufnr("#")
      if(prevbufvar > 0 && buflisted(prevbufvar) && prevbufvar != s:kwbdBufNum)
        b #
      else
        bn
      endif
    endif
  endif
endfunction

command! Kwbd call s:Kwbd(1)

filetype plugin indent on

" mappings
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

" conveniences
inoremap {<CR> {<CR>}<Esc>ko<Tab>
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a

" watch for changes
augroup myvimrc
  au!
  au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
