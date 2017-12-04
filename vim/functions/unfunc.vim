" delete lines above and below cursor
" optionally pass a "diameter"
func! s:Unfunc(...)
  if (a:1 > 1)
    let l:lines = a:1
  else
    let l:lines = 1
  endif

  let l:i = 0
  while(l:i < l:lines)
    execute "normal! dk"
    let l:i = l:i + 1
  endwhile

  execute "normal! dd"
endfunction

command! -nargs=? F call s:Unfunc(<q-args>)
