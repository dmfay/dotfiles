#!/bin/sh

for layout in $(ls ~/.config/i3/layouts/*.json); do
  i3-msg "workspace $(basename $layout .json); append_layout $layout"
done

(atom &)
(urxvt &)
(chromium &)
(keepassx2 &)
(nylas &)
(pidgin &)
(steam &)
