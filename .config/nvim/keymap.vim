" Use fzf to navigate project files
nnoremap <C-p> :<C-u>GFiles<CR>

" Move lines down
nnoremap <C-J> :move .+1<CR>
vnoremap <C-J> :move '>+1<CR>gv
" Move lines up
nnoremap <C-K> :move .-2<CR>
vnoremap <C-K> :move '<-2<CR>gv

" Use C-/ or C-_ to toggle comments (these keystrokes look the same to vim)
nmap <C-_> <Plug>NERDCommenterToggle
imap <C-_> <Plug>NERDCommenterInsert

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>p <Plug>(coc-format-selected)
nmap <leader>p <Plug>(coc-format-selected)

" Apply codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>fm <Plug>(coc-codeaction-selected)
nmap <leader>fm <Plug>(coc-codeaction-selected)
" Apply codeAction to the current buffer.
nmap <leader>fme <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>f_  <Plug>(coc-fix-current)

" Mappings for CoCList
" Find symbol of current document.
nnoremap <silent><nowait> <leader>ls  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <leader>ss  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <leader>ff  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <leader>fF  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <leader>lp  :<C-u>CocListResume<CR>

" Use CTRL-SPACE selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-space> <Plug>(coc-range-select)
xmap <silent> <C-space> <Plug>(coc-range-select)
vmap <silent> <C-S-space> <Plug>(coc-range-select-backward)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

