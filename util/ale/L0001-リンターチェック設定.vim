"リンター設定
let g:ale_linters = {
\   'nim': ['nimlsp', 'nimcheck'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'nim': ['nimpretty'],
\}

let g:ale_linters_explicit = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✖✖'
let g:ale_sign_warning = '⚠⚠'
highlight ALEErrorSign guifg=Red
highlight ALEWarningSign guifg=Yellow
