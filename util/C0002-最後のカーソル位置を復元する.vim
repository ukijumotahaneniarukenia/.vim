"ファイルを開いたときに前回開いたときの最後のカーソル位置を復元してくれます
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif
