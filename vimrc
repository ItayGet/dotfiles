syntax on
filetype plugin indent on

" Set numbers
set number relativenumber

" Autocomplete
set wildmode=longest,list,full

" Automatically kill dunst after writing to its config
autocmd BufWritePost ~/.config/dunst/dunstrc,~/dotfiles/dunst/dunstrc !pkill dunst & dunst 

" Making copying and pasting possible
vnoremap <C-Insert> "+y :let @*=@+<CR>
map <S-Insert> "*p

"Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif


let g:livepreview_previewer = 'zathura'
