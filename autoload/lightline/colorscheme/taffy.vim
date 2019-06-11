" =============================================================================
" Filename: autoload/lightline/colorscheme/taffy.vim
" Author: Flrn Prz
" License: MIT License
" =============================================================================

let s:raisin_black = [ '#2f343f', 232 ]
let s:mustard = [ '#ffce5b', 222 ]
let s:blue_bell = [ '#a18bd3', 183 ]
let s:tickle_me_pink = [ '#fb7da7', 211 ]
let s:sea_serpent = [ '#50c6d8', 80 ]
let s:turquoise_green = [ '#98ceb3', 79 ]
let s:isabelline = [ '#efeeea', 254 ]
let s:mummys_tomb = [ '#818e8e', 240 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:isabelline, s:raisin_black ], [ s:turquoise_green, s:raisin_black ] ]
let s:p.normal.right = [ [ s:blue_bell, s:raisin_black ], [ s:turquoise_green, s:raisin_black ] ]
let s:p.inactive.right = [ [ s:mummys_tomb, s:raisin_black ], [ s:mummys_tomb, s:raisin_black ] ]
let s:p.inactive.left =  [ [ s:mummys_tomb, s:raisin_black ], [ s:mummys_tomb, s:raisin_black ] ]
let s:p.insert.left = [ [ s:raisin_black, s:turquoise_green ], [ s:turquoise_green, s:raisin_black ] ]
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

let g:lightline#colorscheme#taffy#palette = lightline#colorscheme#flatten(s:p)
