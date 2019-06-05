" Name:         candid.vim
" Description:  A dark theme with warm vibrant colors
" Author:       Florian Prz
" Repository:   https://github.com/flrnprz/candid.vim/
" License:      The MIT License (MIT)

" Init {{{
scriptencoding utf-8

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'candid'

" Highlighting function (inspiration from https://github.com/chriskempson/base16-vim)
fun! <sid>hi(group, fg, bg, attr, sp)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" .  a:fg.cterm256
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" .  a:bg.cterm256
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if !empty(a:sp)
    exec "hi " . a:group . " guisp=" . a:sp.gui
endif
endfun
"}}}

" colors definition {{{

let s:paradise_pink = {'gui': '#e5445f', 'cterm256': '168'}
let s:vivid_tangerine = {'gui': '#f99c86', 'cterm256': '173'}
let s:sandy_brown = {'gui': '#f2b065', 'cterm256': '179'}
let s:blue_bell = {'gui': '#a1a2dd', 'cterm256': '180'}
let s:turquoise_green = {'gui': '#98ceb3', 'cterm256': '79'}
let s:isabelline = {'gui': '#efeeea', 'cterm256': '254'}
let s:raisin_black = {'gui': '#251f28', 'cterm256': '232'}
let s:mummys_tomb = {'gui': '#818e8e', 'cterm256': '240'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}
let s:visual_black = { 'gui': 'NONE', 'cterm256': 'NONE'}

"}}}

"--------------------
" Syntax Definitions
"--------------------
" <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL)
call <sid>hi('Normal', s:isabelline, s:raisin_black, 'none', {})

" UI {{{
call <sid>hi('Cursor', s:none, s:none, 'inverse', {})
hi link lCursor Cursor
hi link CursorIM Cursor
call <sid>hi('CursorLine', s:isabelline, s:raisin_black, 'none', {})
call <sid>hi('EndOfBuffer', s:sandy_brown, s:none, 'none', {})
call <sid>hi('Conceal', s:blue_bell, s:none, 'none', {})
call <sid>hi('CursorColumn', s:none, s:blue_bell, 'none', {})
call <sid>hi('ColorColumn', s:none, s:paradise_pink, 'none', {})
call <sid>hi('FoldColumn', s:mummys_tomb, s:raisin_black, 'none', {})
call <sid>hi('SignColumn', s:none, s:raisin_black, 'none', {})
call <sid>hi('VertSplit', s:mummys_tomb, s:mummys_tomb, 'none', {})
call <sid>hi('LineNr', s:sandy_brown, s:raisin_black, 'none', {})
call <sid>hi('CursorLineNr', s:sandy_brown, s:raisin_black, 'none', {})

call <sid>hi('DiffAdd', s:raisin_black, s:turquoise_green, 'none', {})
call <sid>hi('DiffChange', s:raisin_black, s:vivid_tangerine, 'none', {})
call <sid>hi('DiffDelete', s:raisin_black, s:paradise_pink, 'none', {})
call <sid>hi('DiffText', s:raisin_black, s:blue_bell, 'none', {})

call <sid>hi('ErrorMsg', s:paradise_pink, s:raisin_black, 'bold', {})
call <sid>hi('ModeMsg', s:sandy_brown, s:none, 'bold', {})
call <sid>hi('MoreMsg', s:blue_bell, s:none, 'bold', {})
call <sid>hi('WarningMsg', s:sandy_brown, s:none, 'italic', {})
call <sid>hi('Noise', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('NonText', s:sandy_brown, s:none, 'none', {})
call <sid>hi('Folded', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('IncSearch', s:sandy_brown, s:raisin_black, 'none', {})
call <sid>hi('Search', s:sandy_brown, s:raisin_black, 'reverse', {})

call <sid>hi('Pmenu', s:raisin_black, s:sandy_brown, 'none', {})
call <sid>hi('PmenuSel', s:raisin_black, s:sandy_brown, 'bold', {})

call <sid>hi('Question', s:isabelline, s:raisin_black, 'bold', {})
call <sid>hi('MatchParen', s:blue_bell, s:none, 'bold', {})
call <sid>hi('Directory', s:sandy_brown, s:raisin_black, 'bold', {})
call <sid>hi('QuickFixLine', s:raisin_black, s:sandy_brown, 'none', {})

call <sid>hi('SpecialKey', s:vivid_tangerine, s:none, 'none', {})
call <sid>hi('SpellBad', s:paradise_pink, s:none, 'undercurl', s:paradise_pink)
call <sid>hi('SpellCap', s:mummys_tomb, s:none, 'undercurl', s:paradise_pink)
call <sid>hi('SpellLocal', s:sandy_brown, s:none, 'undercurl', {})
call <sid>hi('SpellRare', s:turquoise_green, s:none, 'undercurl', {})

call <sid>hi('StatusLine', s:isabelline, s:raisin_black, 'none', {})
call <sid>hi('StatusLineNC', s:raisin_black, s:vivid_tangerine, 'none', {})
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC

call <sid>hi('TabLine', s:isabelline, s:raisin_black, 'none', {})
hi link TabLineFill TabLine
call <sid>hi('TabLineSel', s:sandy_brown, s:raisin_black, 'none', {})

call <sid>hi('Title', s:isabelline, s:none, 'none', {})
call <sid>hi('Visual', s:raisin_black, s:blue_bell, 'none', {})
hi link VisualNOS Visual
call <sid>hi('TabLine', s:isabelline, s:raisin_black, 'none', {})
call <sid>hi('WildMenu', s:raisin_black, s:isabelline, 'bold', {})
"}}}

"----------------------------------------------------
" Syntax groups and naming convenions
" http://vimdoc.sourceforge.net/htmldoc/syntax.html
"----------------------------------------------------
" {{{
call <sid>hi('Comment', s:mummys_tomb, s:none, 'italic', {})

call <sid>hi('Constant', s:sandy_brown, s:none, 'none', {})
call <sid>hi('String', s:turquoise_green, s:none, 'none', {})
hi link Character Constant
hi link Number Constant
hi link Boolean Constant
hi link Float Number

call <sid>hi('Identifier', s:isabelline, s:none, 'none', {})
call <sid>hi('Function', s:vivid_tangerine, s:none, 'none', {})

call <sid>hi('Statement', s:paradise_pink, s:none, 'none', {})
hi link Conditional Statement

call <sid>hi('PreProc', s:blue_bell, s:none, 'none', {})

call <sid>hi('Type', s:blue_bell, s:none, 'none', {})

call <sid>hi('Special', s:blue_bell, s:none, 'none', {})

call <sid>hi('Underlined', s:none, s:none, 'underline', {})

call <sid>hi('Ignore', s:none, s:none, 'none', {})

call <sid>hi('Error', s:paradise_pink, s:raisin_black, 'undercurl', {})

call <sid>hi('Todo', s:paradise_pink, s:none, 'italic', {})

"}}}

"--------------------------
" Language specific syntax
"--------------------------

" HTML {{{
call <sid>hi('htmlTag', s:mummys_tomb, s:none, 'none', {})
hi link htmlEndTag htmlTag
call <sid>hi('htmlTagName', s:blue_bell, s:none, 'none', {})
call <sid>hi('htmlArg', s:sandy_brown, s:none, 'none', {})
call <sid>hi('htmlTitle', s:isabelline, s:none, 'none', {})
"}}}

" XML {{{
call <sid>hi('xmlRegion', s:isabelline, s:none, 'none', {})
hi link xmlTag xmlRegion
call <sid>hi('xmlTagName', s:sandy_brown, s:none, 'none', {})
call <sid>hi('xmlEndTag', s:mummys_tomb, s:none, 'none', {})
" }}}

" Css {{{
call <sid>hi('cssAttrComma', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('cssAttributeSelector', s:turquoise_green, s:none, 'none', {})
call <sid>hi('cssBraces', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('cssClassName', s:vivid_tangerine, s:none, 'none', {})
call <sid>hi('cssDefinition', s:turquoise_green, s:none, 'none', {})
call <sid>hi('cssFontAttr', s:sandy_brown, s:none, 'none', {})
call <sid>hi('cssFontDescriptor', s:turquoise_green, s:none, 'none', {})
call <sid>hi('cssFunctionName', s:blue_bell, s:none, 'none', {})
call <sid>hi('cssIdentifier', s:blue_bell, s:none, 'none', {})
call <sid>hi('cssImportant', s:vivid_tangerine, s:none, 'none', {})
call <sid>hi('cssInclude', s:isabelline, s:none, 'none', {})
call <sid>hi('cssIncludeKeyword', s:paradise_pink, s:none, 'none', {})
call <sid>hi('cssMediaType', s:blue_bell, s:none, 'none', {})
call <sid>hi('cssProp', s:isabelline, s:none, 'none', {})
call <sid>hi('cssPseudoClassId', s:sandy_brown, s:none, 'none', {})
call <sid>hi('cssTagName', s:paradise_pink, s:none, 'none', {})
call <sid>hi('cssSelectorOp', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('cssSelectorOp2', s:mummys_tomb, s:none, 'none', {})
"}}}

" Javascript {{{
" https://github.com/pangloss/vim-javascript
call <sid>hi('jsImport', s:paradise_pink, s:none, 'none', {})
hi link jsExport jsImport
hi link jsFrom jsImport
hi link jsExportDefault jsExport
hi link jsArrowFunction jsImport
call <sid>hi('jsThis', s:sandy_brown, s:none, 'none', {})
" https://github.com/othree/yajs.vim
hi link javascriptImport jsImport
hi link javascriptExport jsExport
call <sid>hi('javascriptMethod', s:sandy_brown, s:none, 'none', {})
"}}}

" JSX {{{
" https://github.com/MaxMEllon/vim-jsx-pretty
call <sid>hi('jsxTagName', s:sandy_brown, s:none, 'none', {})
call <sid>hi('jsxPunct', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('jsClosePunct', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('jsxComponentName', s:blue_bell, s:none, 'none', {})
call <sid>hi('jsxAttrib', s:vivid_tangerine, s:none, 'none', {})
hi link jsxCloseString jsClosePunct

"}}}

" Golang {{{
call <sid>hi('goDirective', s:blue_bell, s:none, 'none', {})
call <sid>hi('goConstants', s:isabelline, s:none, 'none', {})
call <sid>hi('goDeclaration', s:paradise_pink, s:none, 'none', {})
call <sid>hi('goDeclType', s:sandy_brown, s:none, 'none', {})
call <sid>hi('goBuiltins', s:sandy_brown, s:none, 'none', {})
call <sid>hi('goFunctionCall', s:sandy_brown, s:none, 'none', {})
call <sid>hi('goVarAssign', s:isabelline, s:none, 'none', {})
hi link goVarDefs goVarAssign
"}}}

" Markdown {{{
call <sid>hi('markdownCode', s:turquoise_green, s:none, 'none', {})
hi link markdownCodeBlock markdownCode
hi link markdownCodeDelimiter markdownCode
call <sid>hi('markdownHeadingDelimiter', s:sandy_brown, s:none, 'none', {})
call <sid>hi('markdownRule', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('markdownHeadingRule', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('markdownH1', s:sandy_brown, s:none, 'none', {})
hi link markdownH2 markdownH1
hi link markdownH3 markdownH1
hi link markdownH4 markdownH1
hi link markdownH5 markdownH1
hi link markdownH6 markdownH1
call <sid>hi('markdownIdDelimiter', s:vivid_tangerine, s:none, 'none', {})
call <sid>hi('markdownId', s:vivid_tangerine, s:none, 'none', {})
call <sid>hi('markdownBlockquote', s:blue_bell, s:none, 'none', {})
call <sid>hi('markdowItalic', s:none, s:none, 'italic', {})
call <sid>hi('markdownBold', s:none, s:none, 'bold', {})
call <sid>hi('markdownListMarker', s:blue_bell, s:none, 'none', {})
call <sid>hi('markdownOrdeparadise_pinkListMarker', s:blue_bell, s:none, 'none', {})
call <sid>hi('markdownIdDeclaration', s:blue_bell, s:none, 'none', {})
call <sid>hi('markdownLinkText', s:blue_bell, s:none, 'none', {})
call <sid>hi('markdownLinkDelimiter', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('markdownUrl', s:vivid_tangerine, s:none, 'none', {})

"}}}

" NERDTree {{{
call <sid>hi('NERDTreeDir', s:sandy_brown, s:none, 'none', {})
call <sid>hi('NERDTreeDirSlash', s:blue_bell, s:none, 'none', {})
call <sid>hi('NERDTreeFile', s:isabelline, s:none, 'none', {})
call <sid>hi('NERDTreeExecFile', s:turquoise_green, s:none, 'none', {})
call <sid>hi('NERDTreeOpenable', s:sandy_brown, s:none, 'none', {})
call <sid>hi('NERDTreeClosable', s:paradise_pink, s:none, 'none', {})
call <sid>hi('NERDTreeCWD', s:vivid_tangerine, s:none, 'bold', {})
call <sid>hi('NERDTreeUp', s:mummys_tomb, s:none, 'none', {})
" }}}