#!/bin/sh

for layout in ~/.config/i3/layouts/*; do
  i3-msg "workspace $(basename "$layout" .json); append_layout $layout"
done

(vivaldi-stable &)
(keepassx2 &)
(thunderbird &)
(steam &)
(slack &)
