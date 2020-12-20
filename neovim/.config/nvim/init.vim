syntax on
filetype plugin indent on

call plug#begin('~/.local/share/nvim/plugged')

" Plug 'neoclide/coc.nvim'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'Shougo/deoplete.nvim'

" Plug 'deoplete-plugins/deoplete-clang'

" Plug 'Shougo/deoplete-clangx'

Plug 'xavierd/clang_complete'

call plug#end()

" Set numbers
set number relativenumber

" Autocomplete
set wildmode=longest,list,full

set timeout timeoutlen=5000 ttimeoutlen=100

" Automatically kill dunst after writing to its config
autocmd BufWritePost ~/.config/dunst/dunstrc,~/dotfiles/dunst/dunstrc !pkill dunst & dunst 

" Automatically update spicetify after writing ot its config
autocmd BufWritePost ~/.config/spicetify/* !spicetify apply

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

" source ~/.config/nvim/coc.vim
