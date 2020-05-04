"""" PLUGINS """"

let rp1 = split(&runtimepath, ",")[0]
let plugvim = rp1 . '/autoload/plug.vim'
let plugindir = rp1 . '/plugged'

if empty(glob(plugvim))
  silent execute '!curl -fLo ' . plugvim . ' --create-dirs' .
        \ ' https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(plugindir)
Plug 'vim-scripts/ShowTrailingWhitespace'
Plug 'tpope/vim-sensible'
Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
call plug#end()

"""" UI SETTINGS """"

" Enable syntax highlighting
syntax enable

" Theme
set termguicolors
set background=dark
let g:gruvbox_contrast_dark = "medium"
colorscheme gruvbox
"" colorscheme sets Visual highlight to reverse"
highlight Visual cterm=bold

" Enable line numbers
set number
set relativenumber
set numberwidth=6

" Make tabs as wide as two spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Don't wrap lines by default
set nowrap

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
if (!has('nvim'))
  set esckeys
endif

" Allow backspace in insert mode
set backspace=indent,eol,start

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" Always show status line
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Disable error bells
set noerrorbells

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Don’t show the intro message when starting Vim
set shortmess=atI

"""" SYSTEM """"

" Optimize for fast terminal connections
set ttyfast

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

"""" SHORTCUTS """"

" Save with Ctrl+S (Cmd+S doesn't seem to work)
nnoremap <silent> <C-S> :<C-u>w<CR>
vnoremap <silent> <C-S> <esc>:<C-u>w<CR>gv
inoremap <silent> <C-S> <C-o>:w<CR>

" Change mapleader
let mapleader=" "
nnoremap <Space> <Nop>

noremap <Leader>c :
noremap <Leader>ev :vsplit $MYVIMRC<CR>
noremap <Leader>sv source $MYVIMRC<CR>

"""" AUTOCMD """"

if has("autocmd")
  " Enable file type detection
  filetype on
  " Treat .json files as .js
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
  " Treat .md files as Markdown
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

