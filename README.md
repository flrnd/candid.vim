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
| ![#fb7da7](https://place-hold.it/15/fb7da7/fb7da7?text=+) **#fb7da7** | **red** (_Tickle me pink_) | Statement|
| ![#a18bd3](https://place-hold.it/15/a18bd3/a18bd3?text=+) **#a18bd3** | **purple** (_Blue bell_)      | Identifier, function |
| ![#ffce5b](https://place-hold.it/15/ffce5b/ffce5b?text=+) **#ffcd5b** | **yellow** (_Mustard_)        | String |
| ![#50c6d8](https://place-hold.it/15/50c6d8/50c6d8?text=+) **#50c6d8** | **cyan** (_Sea serpent_)    | Constant, Type |
| ![#2cda9d](https://place-hold.it/15/2cda9d/2cda9d?text=+) **#2cda9d** | **green** (_Eucalyptus_)     | Special |
| ![#4c8273](https://place-hold.it/15/4c8273/4c8273?text=+) **#4c8273** | **comment** (_Viridian_)       | Comment |
| ![#1c1c1c](https://place-hold.it/15/1c1c1c/1c1c1c?text=+) **#1c1c1c** | **menublack** (_Pale black_)     | Menu       |
| ![#818e8e](https://place-hold.it/15/818e8e/818e8e?text=+) **#818e8e** | **grey** (_Mummys tomb_)    | Punctuation, noise |
| ![#efeeea](https://place-hold.it/15/efeeea/efeeea?text=+) **#efeeea** | **white** (_Isabelline_)     | Foreground |
| ![#2f343f](https://place-hold.it/15/2f343f/2f343f?text=+) **#2f343f** | **black** (_Raisin black_)   | Background |
