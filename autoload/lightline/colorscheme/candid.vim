" =============================================================================
" Filename: autoload/lightline/colorscheme/candid.vim
" Author: Florian Rand
" License: MIT License
" =============================================================================
let s:colors = candid#GetColors()

let s:mustard = [ s:colors.yellow.gui, s:colors.yellow.cterm256 ]
let s:blue_bell = [ s:colors.purple.gui, s:colors.purple.cterm256 ]
let s:tickle_me_pink = [ s:colors.red.gui, s:colors.red.cterm256 ]
let s:sea_serpent = [ s:colors.cyan.gui, s:colors.cyan.cterm256 ]
let s:eucalyptus = [ s:colors.green.gui, s:colors.green.cterm256 ]
let s:isabelline = [ s:colors.white.gui, s:colors.white.cterm256 ]
let s:raisin_black = [ s:colors.black.gui, s:colors.black.cterm256 ]
let s:mummys_tomb = [ s:colors.comment.gui, s:colors.comment.cterm256 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:isabelline, s:raisin_black ], [ s:eucalyptus, s:raisin_black ] ]
let s:p.normal.right = [ [ s:blue_bell, s:raisin_black ], [ s:eucalyptus, s:raisin_black ] ]
let s:p.inactive.right = [ [ s:mummys_tomb, s:raisin_black ], [ s:mummys_tomb, s:raisin_black ] ]
let s:p.inactive.left =  [ [ s:mummys_tomb, s:raisin_black ], [ s:mummys_tomb, s:raisin_black ] ]
let s:p.insert.left = [ [ s:raisin_black, s:eucalyptus ], [ s:eucalyptus, s:raisin_black ] ]
let s:p.replace.left = [ [ s:tickle_me_pink, s:raisin_black ], [ s:tickle_me_pink, s:raisin_black ] ]
let s:p.visual.left = [ [ s:raisin_black, s:blue_bell ], [ s:blue_bell, s:raisin_black ] ]
let s:p.normal.middle = [ [ s:isabelline, s:raisin_black ] ]
let s:p.inactive.middle = [ [ s:mummys_tomb, s:raisin_black ] ]
let s:p.tabline.left = [ [ s:sea_serpent, s:mummys_tomb ] ]
let s:p.tabline.tabsel = [ [ s:isabelline, s:raisin_black ] ]
let s:p.tabline.middle = [ [ s:isabelline, s:raisin_black ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:raisin_black, s:tickle_me_pink ] ]
let s:p.normal.warning = [ [ s:raisin_black, s:mustard ] ]

let g:lightline#colorscheme#candid#palette = lightline#colorscheme#flatten(s:p)
