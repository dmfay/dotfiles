function dirdiff() {
  diff -r $1 $2 | sed '/Binary\ files\ /d'
}
