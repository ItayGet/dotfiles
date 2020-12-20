" Vim Plug 
call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

Plug 'preservim/nerdtree'

call plug#end()

" Configure Coc
source ~/.config/nvim/coc.vim

syntax on
filetype plugin indent on
set number relativenumber
set wildmode=longest,list,full
set timeout timeoutlen=5000 ttimeoutlen=100

" Automatically kill dunst after writing to its config
autocmd BufWritePost ~/.config/dunst/dunstrc,~/dotfiles/dunst/dunstrc !pkill dunst & dunst 

"Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

let g:livepreview_previewer = 'zathura'
