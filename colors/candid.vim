" vim:fdm=marker
" Vim Color File
" Name:         candid.vim
" Author:       Florian Prz
" Repository:   https://github.com/flrnprz/candid.vim
" License:      The MIT License (MIT)
" Description:  A dark colorscheme with vibrant colors

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

let s:tickle_me_pink = {'gui': '#fb7da7', 'cterm256': '168'}
let s:blue_bell = {'gui': '#a18bd3', 'cterm256': '180'}
let s:mustard = {'gui': '#ffce5b', 'cterm256': '222'}
let s:sea_serpent = {'gui': '#50C6D8', 'cterm256': '180'}
let s:eucalyptus = {'gui': '#2cda9d', 'cterm256': '79'}
let s:isabelline = {'gui': '#efeeea', 'cterm256': '254'}
let s:raisin_black = {'gui': '#2f343f', 'cterm256': '232'}
let s:mummys_tomb = {'gui': '#818e8e', 'cterm256': '240'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}
let s:visual_black = { 'gui': 'NONE', 'cterm256': 'NONE'}
let s:viridian = { 'gui': '#4C8273', 'cterm256': '224' }
let s:pale_black = { 'gui': '#1c1c1c', 'cterm256': '234' }
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
call <sid>hi('CursorLine', s:raisin_black, s:mummys_tomb, 'none', {})
call <sid>hi('EndOfBuffer', s:mustard, s:none, 'none', {})
call <sid>hi('Conceal', s:sea_serpent, s:none, 'none', {})
call <sid>hi('CursorColumn', s:none, s:sea_serpent, 'none', {})
call <sid>hi('ColorColumn', s:none, s:mummys_tomb, 'none', {})
call <sid>hi('FoldColumn', s:mummys_tomb, s:raisin_black, 'none', {})
call <sid>hi('SignColumn', s:none, s:raisin_black, 'none', {})
call <sid>hi('VertSplit', s:mummys_tomb, s:mummys_tomb, 'none', {})
call <sid>hi('LineNr', s:mummys_tomb, s:raisin_black, 'none', {})
call <sid>hi('CursorLineNr', s:mustard, s:raisin_black, 'none', {})

call <sid>hi('DiffAdd', s:eucalyptus, s:none, 'none', {})
call <sid>hi('DiffChange', s:mustard, s:none, 'none', {})
call <sid>hi('DiffDelete', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('DiffText', s:blue_bell, s:none, 'none', {})
" This links help syntax highlight in diff files
hi link diffRemoved DiffDelete
hi link diffChanged DiffChange
hi link diffAdded DiffAdd

call <sid>hi('ErrorMsg', s:tickle_me_pink, s:raisin_black, 'bold', {})
call <sid>hi('ModeMsg', s:mustard, s:none, 'bold', {})
call <sid>hi('MoreMsg', s:sea_serpent, s:none, 'bold', {})
call <sid>hi('WarningMsg', s:mustard, s:none, 'italic', {})
call <sid>hi('Noise', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('NonText', s:mustard, s:none, 'none', {})
call <sid>hi('Folded', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('IncSearch', s:mustard, s:raisin_black, 'reverse', {})
call <sid>hi('Search', s:mustard, s:raisin_black, 'reverse', {})

call <sid>hi('Pmenu', s:isabelline, s:pale_black, 'none', {})
call <sid>hi('PmenuSel', s:raisin_black, s:eucalyptus, 'none', {})

call <sid>hi('Question', s:isabelline, s:raisin_black, 'bold', {})
call <sid>hi('MatchParen', s:sea_serpent, s:none, 'bold', {})
call <sid>hi('Directory', s:mustard, s:raisin_black, 'bold', {})
call <sid>hi('QuickFixLine', s:raisin_black, s:mustard, 'none', {})

call <sid>hi('SpecialKey', s:blue_bell, s:none, 'none', {})
call <sid>hi('SpellBad', s:tickle_me_pink, s:none, 'undercurl', s:tickle_me_pink)
call <sid>hi('SpellCap', s:mummys_tomb, s:none, 'undercurl', s:tickle_me_pink)
call <sid>hi('SpellLocal', s:mustard, s:none, 'undercurl', {})
call <sid>hi('SpellRare', s:eucalyptus, s:none, 'undercurl', {})

call <sid>hi('StatusLine', s:isabelline, s:raisin_black, 'none', {})
call <sid>hi('StatusLineNC', s:raisin_black, s:blue_bell, 'none', {})
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC

call <sid>hi('TabLine', s:isabelline, s:raisin_black, 'none', {})
hi link TabLineFill TabLine
call <sid>hi('TabLineSel', s:mustard, s:raisin_black, 'none', {})

call <sid>hi('Title', s:isabelline, s:none, 'none', {})
call <sid>hi('Visual', s:raisin_black, s:sea_serpent, 'none', {})
hi link VisualNOS Visual
call <sid>hi('TabLine', s:isabelline, s:raisin_black, 'none', {})
call <sid>hi('WildMenu', s:raisin_black, s:isabelline, 'bold', {})
"}}}

"----------------------------------------------------
" Syntax groups and naming convenions
" http://vimdoc.sourceforge.net/htmldoc/syntax.html
"----------------------------------------------------
" {{{
call <sid>hi('Comment', s:viridian, s:none, 'italic', {})

call <sid>hi('Constant', s:sea_serpent, s:none, 'none', {})
call <sid>hi('String', s:mustard, s:none, 'none', {})
hi link Character Constant
hi link Number Constant
hi link Boolean Constant
hi link Float Number

call <sid>hi('Identifier', s:blue_bell, s:none, 'none', {})
call <sid>hi('Function', s:blue_bell, s:none, 'none', {})

call <sid>hi('Statement', s:tickle_me_pink, s:none, 'none', {})
hi link Conditional Statement

call <sid>hi('PreProc', s:sea_serpent, s:none, 'none', {})

call <sid>hi('Type', s:sea_serpent, s:none, 'none', {})

call <sid>hi('Special', s:eucalyptus, s:none, 'none', {})

call <sid>hi('Underlined', s:none, s:none, 'underline', {})

call <sid>hi('Ignore', s:none, s:none, 'none', {})

call <sid>hi('Error', s:tickle_me_pink, s:raisin_black, 'undercurl', {})

call <sid>hi('Todo', s:eucalyptus, s:none, 'italic', {})

"}}}

"--------------------------
" Language specific syntax
"--------------------------

" HTML {{{
call <sid>hi('htmlTag', s:mummys_tomb, s:none, 'none', {})
hi link htmlEndTag htmlTag
call <sid>hi('htmlTagName', s:blue_bell, s:none, 'none', {})
call <sid>hi('htmlArg', s:sea_serpent, s:none, 'none', {})
call <sid>hi('htmlTitle', s:isabelline, s:none, 'none', {})
call <sid>hi('htmlLink', s:eucalyptus, s:none, 'none', {})
call <sid>hi('htmlSpecialChar', s:mustard, s:none, 'none', {})
call <sid>hi('htmlSpecialTagName', s:tickle_me_pink, s:none, 'none', {})

"}}}

" XML {{{
call <sid>hi('xmlRegion', s:isabelline, s:none, 'none', {})
hi link xmlTag xmlRegion
call <sid>hi('xmlTagName', s:eucalyptus, s:none, 'none', {})
call <sid>hi('xmlEndTag', s:mummys_tomb, s:none, 'none', {})
" }}}

" Css {{{
call <sid>hi('cssAttrComma', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('cssAttributeSelector', s:eucalyptus, s:none, 'none', {})
call <sid>hi('cssBraces', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('cssClassName', s:blue_bell, s:none, 'none', {})
call <sid>hi('cssDefinition', s:blue_bell, s:none, 'none', {})
call <sid>hi('cssFontAttr', s:mustard, s:none, 'none', {})
call <sid>hi('cssFontDescriptor', s:eucalyptus, s:none, 'none', {})
call <sid>hi('cssFunctionName', s:sea_serpent, s:none, 'none', {})
call <sid>hi('cssIdentifier', s:sea_serpent, s:none, 'none', {})
call <sid>hi('cssImportant', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('cssInclude', s:isabelline, s:none, 'none', {})
call <sid>hi('cssIncludeKeyword', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('cssMediaType', s:sea_serpent, s:none, 'none', {})
call <sid>hi('cssProp', s:isabelline, s:none, 'none', {})
call <sid>hi('cssPseudoClassId', s:mustard, s:none, 'none', {})
call <sid>hi('cssTagName', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('cssSelectorOp', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('cssSelectorOp2', s:mummys_tomb, s:none, 'none', {})
"}}}

" Git {{{
call <sid>hi('gitcommitComment', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('gitcommitUnmerged', s:mustard, s:none, 'none', {})
call <sid>hi('gitcommitBranch', s:blue_bell, s:none, 'none', {})
call <sid>hi('gitcommitSelectedType', s:eucalyptus, s:none, 'none', {})
call <sid>hi('gitcommitDiscardedType', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('gitcommitUntrackedFile', s:sea_serpent, s:none, 'none', {})
call <sid>hi('gitcommitDiscardedFile', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('gitcommitSelectedFile', s:eucalyptus, s:none, 'none', {})
call <sid>hi('gitcommitUnmergedFile', s:mustard, s:none, 'none', {})
call <sid>hi('gitcommitSummary', s:isabelline, s:none, 'none', {})
call <sid>hi('gitcommitOverflow', s:tickle_me_pink, s:none, 'none', {})
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile

"}}}

" vim-signify {{{
call <sid>hi('SignifySignAdd', s:eucalyptus, s:none, 'none', {})
call <sid>hi('SignifySignChange', s:mustard, s:none, 'none', {})
call <sid>hi('SignifySignDelete', s:tickle_me_pink, s:none, 'none', {})

"}}}

" Javascript {{{
" https://github.com/pangloss/vim-javascript
call <sid>hi('jsImport', s:tickle_me_pink, s:none, 'none', {})
hi link jsExport jsImport
hi link jsFrom jsImport
hi link jsExportDefault jsExport
hi link jsArrowFunction jsImport
call <sid>hi('jsThis', s:tickle_me_pink, s:none, 'none', {})
" https://github.com/othree/yajs.vim
hi link javascriptImport jsImport
hi link javascriptExport jsExport
call <sid>hi('javascriptMethod', s:eucalyptus, s:none, 'none', {})
hi link javascriptArrowFunc jsArrowFunction
"}}}

" JSX {{{
" https://github.com/MaxMEllon/vim-jsx-pretty
call <sid>hi('jsxTagName', s:blue_bell, s:none, 'none', {})
call <sid>hi('jsxPunct', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('jsClosePunct', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('jsxComponentName', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('jsxAttrib', s:sea_serpent, s:none, 'none', {})
hi link jsxCloseString jsClosePunct

"}}}

" Golang {{{
call <sid>hi('goDirective', s:sea_serpent, s:none, 'none', {})
call <sid>hi('goConstants', s:isabelline, s:none, 'none', {})
call <sid>hi('goDeclaration', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('goDeclType', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('goBuiltins', s:eucalyptus, s:none, 'none', {})
call <sid>hi('goFunctionCall', s:blue_bell, s:none, 'none', {})
call <sid>hi('goVarAssign', s:isabelline, s:none, 'none', {})
hi link goVarDefs goVarAssign
"}}}

" Markdown {{{
call <sid>hi('markdownCode', s:mustard, s:none, 'none', {})
hi link markdownCodeBlock markdownCode
hi link markdownCodeDelimiter markdownCode
call <sid>hi('markdownHeadingDelimiter', s:blue_bell, s:none, 'none', {})
call <sid>hi('markdownRule', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('markdownHeadingRule', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('markdownH1', s:blue_bell, s:none, 'bold', {})
hi link markdownH2 markdownH1
hi link markdownH3 markdownH1
hi link markdownH4 markdownH1
hi link markdownH5 markdownH1
hi link markdownH6 markdownH1
call <sid>hi('markdownIdDelimiter', s:blue_bell, s:none, 'none', {})
call <sid>hi('markdownId', s:blue_bell, s:none, 'none', {})
call <sid>hi('markdownBlockquote', s:sea_serpent, s:none, 'none', {})
call <sid>hi('markdowItalic', s:none, s:none, 'italic', {})
call <sid>hi('markdownBold', s:none, s:none, 'bold', {})
call <sid>hi('markdownListMarker', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('markdownOrderListMarker', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('markdownIdDeclaration', s:sea_serpent, s:none, 'none', {})
call <sid>hi('markdownLinkText', s:eucalyptus, s:none, 'none', {})
call <sid>hi('markdownLinkDelimiter', s:mummys_tomb, s:none, 'none', {})
call <sid>hi('markdownUrl', s:mustard, s:none, 'none', {})

"}}}

" Ruby {{{
call <sid>hi('rubyBlockParameter', s:blue_bell, s:none, 'none', {})
call <sid>hi('rubyClass', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('rubyStringEscape', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('rubyConstant', s:sea_serpent, s:none, 'none', {})
call <sid>hi('rubyControl', s:tickle_me_pink, s:none, 'none', {})
hi link rubyBlockParameterList rubyBlockParameter
call <sid>hi('rubyFunction', s:blue_bell, s:none, 'none', {})
call <sid>hi('rubyGlobalVariable', s:blue_bell, s:none, 'none', {})
call <sid>hi('rubyInclude', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('rubyInstanceVariable', s:blue_bell, s:none, 'none', {})
call <sid>hi('rubyInterpolation', s:mustard, s:none, 'none', {})
call <sid>hi('rubyInterpolationDelimiter', s:eucalyptus, s:none, 'none', {})
call <sid>hi('rubyStringDelimiter', s:mustard, s:none, 'none', {})
call <sid>hi('rubySymbol', s:eucalyptus, s:none, 'none', {})
call <sid>hi('rubyDefine', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('rubyOperator', s:eucalyptus, s:none, 'none', {})
"}}}

" NERDTree {{{
call <sid>hi('NERDTreeDir', s:sea_serpent, s:none, 'none', {})
call <sid>hi('NERDTreeDirSlash', s:mustard, s:none, 'none', {})
call <sid>hi('NERDTreeFile', s:isabelline, s:none, 'none', {})
call <sid>hi('NERDTreeExecFile', s:eucalyptus, s:none, 'none', {})
call <sid>hi('NERDTreeOpenable', s:mustard, s:none, 'none', {})
call <sid>hi('NERDTreeClosable', s:tickle_me_pink, s:none, 'none', {})
call <sid>hi('NERDTreeCWD', s:blue_bell, s:none, 'bold', {})
call <sid>hi('NERDTreeUp', s:mummys_tomb, s:none, 'none', {})
" }}}
