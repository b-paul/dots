" *** UI SETTINGS ***

" Enable line numbers
set number
set relativenumber
set numberwidth=6

" Allow hidden buffers
set hidden

" Don't wrap lines
set nowrap

" One space between sentences
set nojoinspaces

" Ignore case of searches
set ignorecase

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
if (!has('nvim'))
  set esckeys
endif

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

" Enable mouse in all modes
set mouse=a

" Disable error bells
set noerrorbells

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Don’t show the intro message when starting Vim
set shortmess=atI

" Set vertical splits to appear to the right
set splitright

" *** EDITOR ***

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Make tabs as wide as two spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Default autoformatting for coding
set textwidth=80
set fo=ajcroq1

" *** SYSTEM ***

" Optimize for fast terminal connections
set ttyfast

" Centralize backups, swapfiles and undo history
set backupdir=~/.local/share/vim_nvim/backups
set directory=~/.local/share/vim_nvim/swaps
if exists('&undodir')
  set undodir=~/.local/share/vim_nvim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

" *** AUTOCMD ***

if has('autocmd')
  augroup aucommon
    " Treat .json files as .js
    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
    " Treat .md files as Markdown
    autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
    " Reset comments options in Markdown after plugin fucks them up
    function s:FixMarkdownComments()
      set comments-=b:-
      set comments+=fb:-
    endfunction
    autocmd filetype markdown call s:FixMarkdownComments()
  augroup END
endif

" *** SHORTCUTS ***

" Save with Ctrl+S (Cmd+S doesn't seem to work)
nnoremap <silent> <C-S> :<C-u>w<CR>
vnoremap <silent> <C-S> <esc>:<C-u>w<CR>gv
inoremap <silent> <C-S> <C-o>:w<CR>

" Change mapleader
let mapleader=' '
nnoremap <Space> <Nop>
