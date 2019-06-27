function mus#set() abort
  "マウスでカーソル移動やスクロール移動が出来るようになります。
  if has('mouse')
      set mouse=a
      if has('mouse_sgr')
          set ttymouse=sgr
      elseif v:version > 703 || v:version is 703 && has('patch632')
          set ttymouse=sgr
      else
          set ttymouse=xterm2
      endif
  endif
endfunction

call mus#set()
