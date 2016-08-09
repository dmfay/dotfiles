" delete trailing whitespace
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.{js,json,sql,java} :call DeleteTrailingWS()
autocmd BufWrite *rc,*env :call DeleteTrailingWS()
