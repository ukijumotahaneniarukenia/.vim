function! vis#set() abort
  set expandtab " タブ入力を複数の空白入力に置き換える
  set tabstop=2 " 画面上でタブ文字が占める幅
  set softtabstop=2 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
  set autoindent " 改行時に前の行のインデントを継続する
  set smartindent " 改行時に前の行の構文をチェックし次の行のインデントを増減する
  set shiftwidth=2 " smartindentで増減する幅
  "ノーマルモードでスペースを２回押すと、カーソル下の単語がハイライトされます。
  nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>
  set cursorcolumn
endfunction

call vis#set()
