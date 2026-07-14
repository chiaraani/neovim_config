" Neovim color file

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "algas"

" vim: sw=2

highlight Define cterm=bold ctermfg=67 gui=bold

