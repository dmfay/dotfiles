"hi clear
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
    hi Boolean gui=NONE guifg=#e5aaee guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#1e1e2a
    hi Comment gui=NONE guifg=#99afb1 guibg=NONE
    hi Conceal gui=NONE guifg=#a894a0 guibg=NONE
    hi Conditional gui=NONE guifg=#bdaaef guibg=NONE
    hi Constant gui=NONE guifg=#887f68 guibg=NONE
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#1e1e2a
    hi CursorLine gui=NONE guifg=NONE guibg=#1e1e2a
    hi CursorLineNr gui=NONE guifg=#f1e9ef guibg=NONE
    hi DiffAdd gui=NONE guifg=NONE guibg=#1f2b18
    hi DiffChange gui=NONE guifg=NONE guibg=#1e1e2a
    hi DiffDelete gui=NONE guifg=NONE guibg=#281526
    hi DiffText gui=NONE guifg=NONE guibg=#433f5a
    hi Directory gui=bold guifg=#f1e9ef guibg=NONE
    hi Error gui=bold,underline guifg=#b8929c guibg=NONE
    hi ErrorMsg gui=bold guifg=NONE guibg=#281526
    hi FoldColumn gui=NONE guifg=#99afb1 guibg=NONE
    hi Folded gui=NONE guifg=#99afb1 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=NONE guibg=#b8929c
    hi LineNr gui=NONE guifg=#a894a0 guibg=#1e1e2a
    hi MatchParen gui=NONE guifg=NONE guibg=#552a48
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText gui=NONE guifg=#433f5a guibg=NONE
    hi Normal gui=NONE guifg=#f1e9ef guibg=#15151e
    hi Number gui=NONE guifg=#e49ad5 guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#1e1e2a
    hi PmenuSbar gui=NONE guifg=NONE guibg=#552a48
    hi PmenuSel gui=NONE guifg=NONE guibg=#433f5a
    hi PmenuThumb gui=NONE guifg=NONE guibg=#b8929c
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search gui=italic guifg=NONE guibg=#552a48
    hi SignColumn gui=NONE guifg=#d0c49c guibg=NONE
    hi Special gui=NONE guifg=#99afb1 guibg=NONE
    hi SpecialKey gui=NONE guifg=#616161 guibg=NONE
    hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#281526
    hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#1f2b18
    hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#1e1e2a
    hi Statement gui=NONE guifg=#bdaaef guibg=NONE
    hi StatusLine gui=NONE guifg=#f1e9ef guibg=#1e1e2a
    hi StatusLineNC gui=italic guifg=#f1e9ef guibg=#552a48
    hi StorageClass gui=NONE guifg=#d0c49c guibg=NONE
    hi String gui=NONE guifg=#85a876 guibg=NONE
    hi TabLine gui=NONE guifg=#f1e9ef guibg=#281526
    hi TabLineFill gui=NONE guifg=NONE guibg=#281526
    hi TabLineSel gui=reverse guifg=#15151e guibg=#b8929c
    hi Title gui=NONE guifg=#7989b4 guibg=NONE
    hi Todo gui=bold guifg=#b8929c guibg=NONE
    hi Type gui=NONE guifg=#99afb1 guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#333333 guibg=NONE
    hi Visual gui=NONE guifg=NONE guibg=#794d68
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#281526
    hi WildMenu gui=NONE guifg=NONE guibg=#433f5a
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Identifier gui=NONE guifg=NONE guibg=NONE
    hi PreProc gui=NONE guifg=NONE guibg=NONE
    hi SyntasticErrorSign gui=bold guifg=#794d68 guibg=#1e1e2a
    hi SyntasticWarningSign gui=bold guifg=#794d68 guibg=#1e1e2a
endif
