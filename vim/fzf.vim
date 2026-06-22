" File search (was ctrlp ,<Space>)
nnoremap <silent> ,<Space> :Files<CR>

" Buffer search (was ctrlp ,n)
nnoremap <silent> ,n :Buffers<CR>

" Content search with ripgrep (was ag ,gg / ,ag)
nnoremap ,gg :Rg<Space>
nnoremap ,ag :Rg<Space>

" Search word under cursor
nnoremap <silent> ,* :Rg <C-R><C-W><CR>

" Use ripgrep for fzf file listing (respects .gitignore)
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
