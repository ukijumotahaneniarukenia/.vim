function! s:hoge()
  let i=1
  while i<5
    echo "count is" i
    let i+=1
  endwhile
endfunction

command! HOGE call s:hoge()
