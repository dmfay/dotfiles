// an example to create a new mapping `ctrl-y`
// mapkey('<Ctrl-y>', 'Show me the money', function() {
//     Front.showPopup('a well-known phrase uttered by characters in the 1996 film Jerry Maguire (Escape to close).');
// });

// an example to replace `u` with `?`, click `Default mappings` to see how `u` works.
// map('?', 'u');

// an example to remove mapkey `Ctrl-i`
// unmap('<Ctrl-i>');

Hints.style('border: solid 3px #552a48; color:#efe1eb; background: initial; background-color: #552a48;');

Visual.style('marks', 'background-color: #89a1e2;');
Visual.style('cursor', 'background-color: #9065b7;');
map('<Ctrl-[>', '<Esc>');

mapkey('u', 'Scroll a page up', 'Normal.scroll("pageUp")');
mapkey('d', 'Scroll a page down', 'Normal.scroll("pageDown")');

// click `Save` button to make above settings to take effect.
// set theme
settings.theme = '\
.surfingkeys_cursor { \
    background-color: #89065b !important; \
    color: #9065b7 !important; \
} \
surfingkeys_mark { \
    background-color: #89a1e2 !important; \
} \
.sk_theme { \
    background: #16161f; \
    color: #efe1eb; \
} \
.sk_theme tbody { \
    background: #16161f; \
    color: #efe1eb; \
} \
.sk_theme input { \
    color: #efe1eb; \
} \
.sk_theme .url { \
    color: #555; \
} \
.sk_theme .annotation { \
    color: #555; \
} \
.sk_theme .focused { \
    background: #16161f; \
}';

