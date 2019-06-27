function pst#set() abort
"クリップボードから普通にペーストすると自動インデントが効いて下に行くほど右にずれていきますが、
"以下の設定をすることで、クリップボードからペーストする時だけインデントしないようにしてくれます。
  if &term =~ "xterm"
      let &t_SI .= "\e[?2004h"
      let &t_EI .= "\e[?2004l"
      let &pastetoggle = "\e[201~"
  
      function XTermPasteBegin(ret)
          set paste
          return a:ret
      endfunction
  
      inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
  endif
endfunction

call pst#set()
