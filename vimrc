" Pathogen
execute pathogen#infect()


syntax on
filetype plugin indent on

" Set numbers
set number relativenumber

" Autocomplete
set wildmode=longest,list,full

" Automatically kill dunst after writing to its config
autocmd BufWritePost ~/.config/dunst/dunstrc,~/dotfiles/dunst/dunstrc !pkill dunst & dunst 
