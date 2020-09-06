call plug#begin(stdpath('data') . '/plugged')
Plug 'ThePrimeagen/vim-be-good'
Plug 'gruvbox-community/gruvbox'
call plug#end()

let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

set relativenumber

colorscheme gruvbox
set background=dark

