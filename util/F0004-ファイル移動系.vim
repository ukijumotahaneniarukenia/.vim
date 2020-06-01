"挿入モードで'jj' → ESC
"https://qiita.com/Sa2Knight/items/b8e4f1af5222e54cd006
inoremap <silent> jj <ESC>
"挿入モードから抜けると同時に保存
inoremap <silent> jj <ESC>:w<CR>

"vimに送り込まれたファイルバッファはコマンドモードで:ls
"https://qiita.com/Sa2Knight/items/8a5d3b63dc45b02fc8c9
"vim *.rbなどで複数ファイル開いたときに、Ctrl+jないし、Ctrl+kでバッファ切り替えることができる
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>
