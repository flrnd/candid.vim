" =============================================================================
" Filename: autoload/lightline/colorscheme/candid.vim
" Author: Flrn Prz
" License: MIT License
" =============================================================================
let s:raisin_black = [ '#251f28', 232 ]
let s:sandy_brown = [ '#f2b065', 179 ]
let s:vivid_tangerine = [ '#f99c86', 173 ]
let s:paradise_pink = [ '#e5445f', 168 ]
let s:blue_bell = [ '#a1a2dd', 180 ]
let s:turquoise_green = [ '#98ceb', 79 ]
let s:isabelline = [ '#efeeea', 254 ]
let s:mummys_tomb = [ '#818e8e', 240 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:raisin_black, s:blue_bell ], [ s:paradise_pink, s:sandy_brown ] ]
let s:p.normal.right = [ [ s:raisin_black, s:blue_bell ], [ s:paradise_pink, s:sandy_brown ] ]
let s:p.inactive.right = [ [ s:isabelline, s:raisin_black ], [ s:isabelline, s:raisin_black ] ]
let s:p.inactive.left =  [ [ s:sandy_brown, s:raisin_black ], [ s:vivid_tangerine, s:raisin_black ] ]
let s:p.insert.left = [ [ s:raisin_black, s:turquoise_green ], [ s:turquoise_green, s:raisin_black ] ]
let s:p.replace.left = [ [ s:raisin_black, s:paradise_pink ], [ s:paradise_pink, s:raisin_black ] ]
let s:p.visual.left = [ [ s:raisin_black, s:blue_bell ], [ s:blue_bell, s:raisin_black ] ]
let s:p.normal.middle = [ [ s:isabelline, s:raisin_black ] ]
let s:p.inactive.middle = [ [ s:isabelline, s:mummys_tomb ] ]
let s:p.tabline.left = [ [ s:vivid_tangerine, s:mummys_tomb ] ]
let s:p.tabline.tabsel = [ [ s:isabelline, s:raisin_black ] ]
let s:p.tabline.middle = [ [ s:isabelline, s:raisin_black ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:raisin_black, s:paradise_pink ] ]
let s:p.normal.warning = [ [ s:raisin_black, s:sandy_brown ] ]

let g:lightline#colorscheme#candid#palette = lightline#colorscheme#flatten(s:p)
