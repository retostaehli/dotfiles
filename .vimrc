"================================================
"Plugin management and plugins
"================================================
if empty(glob('~/.vim/autoload/plug.vim')) "Check if plug.vim is present, if not download
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"Plugins
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot' "Sane tab and indention behaviour and other goodies
Plug 'morhetz/gruvbox' "Nice color-theme
Plug 'ycm-core/YouCompleteMe' "Python autocomplete
Plug 'chrisbra/Colorizer' "Interpret terminal terminal color escape codes
call plug#end()
"================================================
"Visual changes
"===============================================
colorscheme gruvbox
set background=dark
syntax on
set number
highlight LineNr ctermfg=Gray
set hlsearch "Highlight whole word when searching
"================================================
"Functional changes
"================================================
set ignorecase "Ignore case while searchong
set smartcase "Dont ignore case if search has capital letter
set pastetoggle=<F2>
"===============================================
"Behavioural changes
"==============================================
let g:ycm_autoclose_preview_window_after_completion = 1
