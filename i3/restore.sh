#!/bin/sh

for layout in $(ls ~/.config/i3/layouts/*.json); do
  i3-msg "workspace $(basename $layout .json); append_layout $layout"
done

(atom &)
(urxvt &)
(vivaldi-stable &)
(keepassx2 &)
(sylpheed &)
(pidgin &)
(steam &)
