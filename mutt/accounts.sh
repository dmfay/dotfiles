i=1

for f in $HOME/.mutt/accounts/*; do
  printf "macro index '<f%s>' '<sync-mailbox><enter-command>source %s<enter><change-folder>!<enter>'\n" "$i" "$f"
  (( i++ ))
done


