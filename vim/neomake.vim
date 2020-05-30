" When writing a buffer (no delay).
call neomake#configure#automake('w')
" " When writing a buffer (no delay), and on normal mode changes (after
" 750ms).
call neomake#configure#automake('nw', 750)
" " When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 1000)
" " Full config: when writing or reading a buffer, and on changes in insert
" and
" " normal mode (after 1s; no delay when writing).
" call neomake#configure#automake('nrwi', 500)

let g:neomake_open_list = 2
let g:neomake_list_height = 5
" let g:neomake_python_pep8_exe = 'python3'
" let g:neomake_python_enabled_makers = ['pep8']
