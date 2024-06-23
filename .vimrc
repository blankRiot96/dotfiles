" Initialize vim-plug
call plug#begin('~/.vim/plugged')

" Add the Catppuccin Mocha theme plugin
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

" End vim-plug initialization
call plug#end()

" Set the Catppuccin Mocha color scheme
let g:lightline = {'colorscheme': 'catppuccin_mocha'}
let g:airline_theme = 'catppuccin_mocha'

" Additional settings for better appearance
syntax enable
set background=dark
set termguicolors
colorscheme catppuccin_mocha


