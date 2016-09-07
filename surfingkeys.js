// an example to remove mapkey `Ctrl-i`
// unmap('<Ctrl-i>');

Hints.style('border: solid 3px #552a48; color:#efe1eb; background: initial; background-color: #552a48;');

Visual.style('marks', 'background-color: #97d3dc;');
Visual.style('cursor', 'background-color: #552a48;');

map('<Ctrl-[>', '<Esc>');

map('u', 'e');  // right-handed scroll up
map('F', 'af'); // open in new tab
map('J', 'E');  // left tab
map('K', 'R');  // right tab

settings.theme = '\
.surfingkeys_cursor { \
    background-color: #89065b !important; \
    color: #552a48 !important; \
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

