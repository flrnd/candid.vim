let s:color_store = get(g:, "candid_color_store", {})

let s:colors = {
  \ "red": get(s:color_store, "red", { "gui": "#fb7da7", "cterm256": "168"}),
  \ "purple": get(s:color_store, "purple", { "gui": "#a18bd3", "cterm256": "176"}),
  \ "yellow": get(s:color_store, "yellow", {'gui': '#ffce5b', 'cterm256': '178'}),
  \ "cyan": get(s:color_store, "cyan", {'gui': '#50c6d8', 'cterm256': '153'}),
  \ "green": get(s:color_store, "green", {'gui': '#2cda9d', 'cterm256': '157'}),
  \ "white": get(s:color_store, "white", {'gui': '#efeeea', 'cterm256': '254'}),
  \ "black": get(s:color_store, "black", {'gui': '#2f343f', 'cterm256': '232'}),
  \ "menublack": get(s:color_store, "menu_black", {'gui': '#1c1c1c', 'cterm256': '234'}),
  \ "grey": get(s:color_store, "grey", {'gui': '#585858', 'cterm256': '240'}),
  \ "none": get(s:color_store, "none", {'gui': 'NONE', 'cterm256': 'NONE'}),
  \ "comment": get(s:color_store, "comment", {'gui': '#4c8273', 'cterm256': '224'}),
  \}

function! candid#GetColors()
  return s:colors
endfunction
