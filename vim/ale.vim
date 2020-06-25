highlight ALEWarning ctermbg=lightblue
highlight ALEError ctermbg=lightred
let g:ale_set_highlights = 0

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 1

let g:ale_open_list = 1
let g:ale_list_window_size = 5

let g:ale_linters = {'go': ['gobuild', 'golangci-lint']}
" overide golangci_lint options, empty string mean using default options
let g:ale_go_golangci_lint_options = ''
