"ファイルビューワー
"表示したいなら、~/.vimrcに移動
set runtimepath+=$HOME/.vim/bundle/nerdtree
autocmd VimEnter * execute 'NERDTree'
nnoremap <silent><C-e> :NERDTreeToggle<CR>
"移動ここまで
