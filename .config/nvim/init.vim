" *** PLUGINS ***

let s:plugvim = '~/.config/nvim/autoload/plug.vim'
let s:plugindir = '~/.config/nvim/plugged'

if empty(glob(s:plugvim))
  silent execute '!curl -fLo ' . s:plugvim . ' --create-dirs' .
        \ ' https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(s:plugindir)
Plug 'vim-scripts/ShowTrailingWhitespace'
Plug 'tpope/vim-sensible'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-repeat'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gruvbox-community/gruvbox'
call plug#end()

" *** THEME ***
set termguicolors
set background=dark
let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox
highlight Visual gui=bold " colorscheme sets Visual highlight to reverse
let g:airline_theme = 'murmur'
let g:airline_powerline_fonts = 1

" *** COMMON CONFIG ***
source ~/.config/vim_nvim/common.vim

" *** OTHER ***

source ~/.config/nvim/coc_config.vim

command! OpenInVSCode execute "silent !code --goto '" . expand("%") . ":" . line(".") . ":" . col(".") . "'" | redraw!

if !exists('*s:reloadConfig')
  function s:reloadConfig()
    source ~/.config/nvim/init.vim
    PlugInstall
  endfunction
endif
command! ReloadConfig call s:reloadConfig()

" *** KEYMAP ***
source ~/.config/nvim/keymap.vim

