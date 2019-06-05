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
"let s:p.inactive.right = [ [ s:, s: ], [ s:, s: ] ]
"let s:p.inactive.left =  [ [ s:base0, s: ], [ s:, s: ] ]
"let s:p.insert.left = [ [ s:, s: ], [ s:, s: ] ]
"let s:p.replace.left = [ [ s:, s: ], [ s:, s: ] ]
"let s:p.visual.left = [ [ s:, s: ], [ s:base3, s: ] ]
"let s:p.normal.middle = [ [ s:, s: ] ]
"let s:p.inactive.middle = [ [ s:, s: ] ]
"let s:p.tabline.left = [ [ s:, s: ] ]
"let s:p.tabline.tabsel = [ [ s:, s: ] ]
"let s:p.tabline.middle = [ [ s:, s: ] ]
"let s:p.tabline.right = copy(s:p.normal.right)
"let s:p.normal.error = [ [ s:, s: ] ]
"let s:p.normal.warning = [ [ s:, s: ] ]

let g:lightline#colorscheme#candid#palette = lightline#colorscheme#flatten(s:p)
