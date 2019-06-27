function! ccc#set() abort
  set encoding=utf-8 "ファイル読み込み時の文字コードの設定
  set fileencoding=utf-8 " 保存時の文字コード
  set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コードの自動判別. 左側が優先される
  set fileformats=unix,dos,mac " 改行コードの自動判別. 左側が優先される
  set ambiwidth=double " □や○文字が崩れる問題を解決
endfunction

call ccc#set()
