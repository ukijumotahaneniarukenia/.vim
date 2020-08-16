" 行を移動
" カーソル行をCtrl+上矢印キーで上に移動
" カーソル行をCtrl+下矢印キーで下に移動
nnoremap <C-Up> "zdd<Up>"zP
nnoremap <C-Down> "zdd"zp
" 複数行を移動
" ビジュアルモードでShift+Vで選択した行をCtrl+上矢印キーで上に移動
" ビジュアルモードでShift+Vで選択した行をCtrl+下矢印キーで下に移動
vnoremap <C-Down> "zx"zp`[V`]
vnoremap <C-Up> "zx<Up>"zP`[V`]
