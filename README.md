# candid.vim

![candid.vim a dark color scheme for vim/neovim with vibrant colors](https://github.com/flrnprz/candid.vim/blob/master/candid-screen.png)

A dark colorscheme with vibrant colors.

## Install

1. Using your plugin manager of choice and placing `flrnd/candid.vim` in your .vimrc file.
   or
2. clone this directory into your vim/plugged directory

```vim
" important:
set termguicolors

set background=dark
syntax on
colorscheme candid

"" if you use lightline
" Lightline
let g:lightline = { 'colorscheme': 'candid' }
```

## Color customization

For color customization, declare the dictionary `g:candid_color_store` in your .vimrc / init.vim file before `colorscheme candid`:

```vim
" Overrides 'black' and 'white' colors.
let g:candid_color_store = {
    \ "black": {"gui": "#121212", "cterm256": "0"},
    \ "white": {"gui": "#f4f4f4", "cterm256": "255"},
    \}

colorscheme candid

...

```

## Color Palette

| Color                                                                | Name             | Syntax     |
-----------------------------------------------------------------------|------------------|------------|
| <span style="color:#FB7DA7">■</span> **#FB7DA7** | **red** (_Tickle me pink_) | Statement|
| ![purple](https://via.placeholder.com/15/a18bd3/000000?text=+) **#A18BD3** | **purple** (_Blue bell_)      | Identifier, function |
| ![yellow](https://via.placeholder.com/15/ffce5b/000000?text=+) **#FFCE5B** | **yellow** (_Mustard_)        | String |
| ![cyan](https://via.placeholder.com/15/50c6d8/000000?text=+) **#50C6D8** | **cyan** (_Sea serpent_)    | Constant, Type |
| ![green](https://via.placeholder.com/15/2cda9d/000000?text=+) **#2CDA9D** | **green** (_Eucalyptus_)     | Special |
| ![comment](https://via.placeholder.com/15/4C8273/000000?text=+) **#4C8273** | **comment** (_Viridian_)       | Comment |
| ![menublack](https://via.placeholder.com/15/1c1c1c/000000?text=+) **#1c1c1c** | **menublack** (_Pale black_)     | Menu       |
| ![grey](https://via.placeholder.com/15/818e8e/000000?text=+) **#818E8E** | **grey** (_Mummys tomb_)    | Punctuation, noise |
| ![white](https://via.placeholder.com/15/efeeea/000000?text=+) **#EFEEEA** | **white** (_Isabelline_)     | Foreground |
| ![black](https://via.placeholder.com/15/2f343f/000000?text=+) **#2F343F** | **black** (_Raisin black_)   | Background |
