function! rep#set() abort
  "上下に空行を挿入する
  "Shift + Enterで下に、Shift + Ctrl + Enterで上に空行を挿入します。
  "動かない！！！
  nmap # <Space><Space>:%s/<C-r>///g<Left><Left>
endfunction

call rep#set()
