hi clear
syntax reset
let g:colors_name = "caput-mortuum"
if &background == "light"
    hi Boolean gui=NONE guifg=#707070 guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#f5f5f5
    hi Comment gui=NONE guifg=#969696 guibg=NONE
    hi Conceal gui=NONE guifg=#707070 guibg=NONE
    hi Conditional gui=NONE guifg=#4a4a4a guibg=NONE
    hi Constant gui=NONE guifg=#707070 guibg=NONE
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#f5f5f5
    hi CursorLine gui=NONE guifg=NONE guibg=#f5f5f5
    hi CursorLineNr gui=NONE guifg=#969696 guibg=NONE
    hi DiffAdd gui=NONE guifg=NONE guibg=#f0fff0
    hi DiffChange gui=NONE guifg=NONE guibg=#f5f5f5
    hi DiffDelete gui=NONE guifg=NONE guibg=#fff0f0
    hi DiffText gui=NONE guifg=NONE guibg=#e3e3e3
    hi Directory gui=NONE guifg=#4a4a4a guibg=NONE
    hi Error gui=NONE guifg=NONE guibg=#fff0f0
    hi ErrorMsg gui=NONE guifg=NONE guibg=#fff0f0
    hi FoldColumn gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Folded gui=NONE guifg=#969696 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=NONE guibg=#e3e3e3
    hi LineNr gui=NONE guifg=#c2c2c2 guibg=NONE
    hi MatchParen gui=NONE guifg=NONE guibg=#e3e3e3
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Normal gui=NONE guifg=#000000 guibg=#ffffff
    hi Number gui=NONE guifg=#707070 guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#f5f5f5
    hi PmenuSbar gui=NONE guifg=NONE guibg=#ededed
    hi PmenuSel gui=NONE guifg=NONE guibg=#e3e3e3
    hi PmenuThumb gui=NONE guifg=NONE guibg=#dbdbdb
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search gui=NONE guifg=NONE guibg=#ededed
    hi SignColumn gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Special gui=NONE guifg=#707070 guibg=NONE
    hi SpecialKey gui=NONE guifg=#c2c2c2 guibg=NONE
    hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#fff0f0
    hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#f0fff0
    hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#ededed
    hi Statement gui=NONE guifg=#4a4a4a guibg=NONE
    hi StatusLine gui=NONE guifg=#262626 guibg=#ededed
    hi StatusLineNC gui=NONE guifg=#969696 guibg=#ededed
    hi StorageClass gui=NONE guifg=#4a4a4a guibg=NONE
    hi String gui=NONE guifg=#707070 guibg=NONE
    hi TabLine gui=NONE guifg=#969696 guibg=#ededed
    hi TabLineFill gui=NONE guifg=NONE guibg=#ededed
    hi TabLineSel gui=NONE guifg=#262626 guibg=#ededed
    hi Title gui=NONE guifg=#707070 guibg=NONE
    hi Todo gui=standout guifg=NONE guibg=NONE
    hi Type gui=NONE guifg=#4a4a4a guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#e3e3e3 guibg=NONE
    hi Visual gui=NONE guifg=NONE guibg=#e3e3e3
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#fff0f0
    hi WildMenu gui=NONE guifg=NONE guibg=#d1d1d1
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Identifier gui=NONE guifg=NONE guibg=NONE
    hi PreProc gui=NONE guifg=NONE guibg=NONE
elseif &background == "dark"
    hi Boolean gui=NONE guifg=#e5a8ee guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#1d1d29
    hi Comment gui=NONE guifg=#97d3dc guibg=NONE
    hi Conceal gui=NONE guifg=#a894a0 guibg=NONE
    hi Conditional gui=NONE guifg=#9065b7 guibg=NONE
    hi Constant gui=NONE guifg=#f8d48a guibg=NONE
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#1d1d29
    hi CursorLine gui=NONE guifg=NONE guibg=#1d1d29
    hi CursorLineNr gui=NONE guifg=#f0e2ec guibg=NONE
    hi DiffAdd gui=NONE guifg=NONE guibg=#1e2a17
    hi DiffChange gui=NONE guifg=NONE guibg=#1d1d29
    hi DiffDelete gui=NONE guifg=NONE guibg=#271425
    hi DiffText gui=NONE guifg=NONE guibg=#44405b
    hi Directory gui=bold guifg=#f0e2ec guibg=NONE
    hi Error gui=NONE guifg=NONE guibg=#271425
    hi ErrorMsg gui=bold guifg=NONE guibg=#3b0d14
    hi FoldColumn gui=NONE guifg=#97d3dc guibg=NONE
    hi Folded gui=NONE guifg=#97d3dc guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=NONE guibg=#773b65
    hi LineNr gui=NONE guifg=#a894a0 guibg=#1d1d29
    hi MatchParen gui=NONE guifg=NONE guibg=#552a48
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText gui=NONE guifg=#44405b guibg=NONE
    hi Normal gui=NONE guifg=#f0e2ec guibg=#16161f
    hi Number gui=NONE guifg=#e5a8ee guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#1d1d29
    hi PmenuSbar gui=NONE guifg=NONE guibg=#552a48
    hi PmenuSel gui=NONE guifg=NONE guibg=#44405b
    hi PmenuThumb gui=NONE guifg=NONE guibg=#773b65
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search gui=italic guifg=NONE guibg=#773b65
    hi SignColumn gui=NONE guifg=#f8d48a guibg=NONE
    hi Special gui=NONE guifg=#97d3dc guibg=NONE
    hi SpecialKey gui=NONE guifg=#616161 guibg=NONE
    hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#271425
    hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#1e2a17
    hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#1d1d29
    hi Statement gui=NONE guifg=#9065b7 guibg=NONE
    hi StatusLine gui=NONE guifg=#f0e2ec guibg=#1d1d29
    hi StatusLineNC gui=italic guifg=#f0e2ec guibg=#552a48
    hi StorageClass gui=NONE guifg=#f8d48a guibg=NONE
    hi String gui=NONE guifg=#90e574 guibg=NONE
    hi TabLine gui=NONE guifg=#f0e2ec guibg=#271425
    hi TabLineFill gui=NONE guifg=NONE guibg=#271425
    hi TabLineSel gui=reverse guifg=#16161f guibg=#773b65
    hi Title gui=NONE guifg=#89a1e2 guibg=NONE
    hi Todo gui=bold guifg=NONE guibg=NONE
    hi Type gui=NONE guifg=#97d3dc guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#333333 guibg=NONE
    hi Visual gui=NONE guifg=NONE guibg=#773b65
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#3b0d14
    hi WildMenu gui=NONE guifg=NONE guibg=#44405b
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Identifier gui=NONE guifg=NONE guibg=NONE
    hi PreProc gui=NONE guifg=NONE guibg=NONE
endif
