"Shift + Enterで下に、Shift + Ctrl + Enterで上に空行を挿入します。
imap <S-CR> <End><CR>
imap <C-S-CR> <Up><End><CR>
nnoremap <S-CR> mzo<ESC>`z
nnoremap <C-S-CR> mzO<ESC>`z
" 行を移動
nnoremap <C-Up> "zdd<Up>"zP
nnoremap <C-Down> "zdd"zp
" 複数行を移動
vnoremap <C-Up> "zx<Up>"zP`[V`]
vnoremap <C-Down> "zx"zp`[V`]
"Ctrl+tでタイポ修正 Ctrl+tでtehをtheに直したりできます。
"ctrl+a-->ctrl+t
inoremap <C-t> <Esc><Left>"zx"zpa
"挿入モードでのDeleteとBackspaceです。
"ctrl+a-->del or bksp
inoremap <C-d> <Del>
imap <C-h> <BS>
