highlight ALEWarning ctermbg=lightblue
highlight ALEError ctermbg=lightred
let g:ale_set_highlights = 0

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 1

let g:ale_open_list = 1
let g:ale_list_window_size = 5

" overide golangci_lint options, empty string mean using default options
let g:ale_go_golangci_lint_options = ''

call ale#Set('ruby_ruby_lint_executable', 'ruby-lint')
call ale#linter#Define('ruby', {
            \   'name': 'ruby-lint',
            \   'executable': {b -> ale#Var(b, 'ruby_ruby_lint_executable')},
            \   'command': '%e -w -c -T1 %t',
            \   'output_stream': 'stderr',
            \   'callback': 'ale#handlers#ruby#HandleSyntaxErrors'
            \})

let g:ale_linters = {
            \'go': ['gobuild', 'golangci-lint'],
            \'ruby': ['ruby', 'rubocop', 'brakeman', 'debribe', 'ruby-lint']
            \}

