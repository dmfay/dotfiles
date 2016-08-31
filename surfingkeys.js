// an example to create a new mapping `ctrl-y`
// mapkey('<Ctrl-y>', 'Show me the money', function() {
//     Front.showPopup('a well-known phrase uttered by characters in the 1996 film Jerry Maguire (Escape to close).');
// });

// an example to replace `u` with `?`, click `Default mappings` to see how `u` works.
// map('?', 'u');

// an example to remove mapkey `Ctrl-i`
// unmap('<Ctrl-i>');

Hints.style("border: solid 3px #C38A22; color:red;");

map('<Ctrl-[>', '<Esc>');

// click `Save` button to make above settings to take effect.
// set theme
settings.theme = '\
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

