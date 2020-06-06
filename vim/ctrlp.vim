let g:ctrlp_map = ',<Space>'
nnoremap <slient> ,<Space> :CtrlP<CR>

" Additional mapping for buffer search
nnoremap <silent> ,n :CtrlPBuffer<CR>

" Cmd-Shift-P to clear the cache
nnoremap <silent> <D-P> :ClearCtrlPCache<CR>

" Don't jump to already open window. This is annoying if you are maintaining
" several Tab workspaces and want to open two windows into the same file.
let g:ctrlp_switch_buffer = 0

" turn off ctrlP caching, helpful when switch branch or rename file
let g:ctrlp_use_caching = 0

" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 0

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }"
