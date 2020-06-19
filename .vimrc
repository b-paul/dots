" *** PLUGINS ***

let s:plugvim = '~/.vim/autoload/plug.vim'
let s:plugindir = '~/.vim/plugged'

if empty(glob(s:plugvim))
  silent execute '!curl -fLo ' . plugvim . ' --create-dirs' .
        \ ' https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(s:plugindir)
Plug 'vim-scripts/ShowTrailingWhitespace'
Plug 'tpope/vim-sensible'
Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-repeat'
Plug 'morhetz/gruvbox'
call plug#end()

" *** THEME ***
set termguicolors
set background=dark
let g:gruvbox_contrast_dark = "medium"
colorscheme gruvbox
highlight Visual cterm=bold " colorscheme sets Visual highlight to reverse

" *** COMMON CONFIG ***
source ~/.config/vim_nvim/common.vim

