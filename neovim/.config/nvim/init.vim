" Vim Plug 
call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

call plug#end()

" Configure Coc
source ~/.config/nvim/coc.vim

syntax on
filetype plugin indent on
set number relativenumber
set wildmode=longest,list,full
set timeout timeoutlen=5000 ttimeoutlen=100

" Override syntax for specific types
autocmd BufNewFile,BufRead *.def set syntax=c

" Automatically kill dunst after writing to its config
autocmd BufWritePost ~/.config/dunst/dunstrc,~/dotfiles/dunst/dunstrc !pkill dunst & dunst 

" Have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

let g:livepreview_previewer = 'zathura'
