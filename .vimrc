scriptencoding utf-8 "Vim script内でマルチバイト文字を使う場合の設定
runtime! util/*.vim
runtime! colors/*.vim
syntax on
colorscheme molokai
set t_Co=256

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/oracle/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/oracle/.vim/bundle')
  call dein#begin('/home/oracle/.vim/bundle')

  " Let dein manage dein
  " Required:
  call dein#add('/home/oracle/.vim/bundle/repos/github.com/Shougo/dein.vim')
  
  let s:toml = '~/.vim/.dein.toml'
  call dein#load_toml(s:toml, {'lazy': 0})

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set rtp+=~/.vim/bundle/nerdtree
autocmd VimEnter * execute 'NERDTree'
set helplang=ja
nnoremap <silent><C-e> :NERDTreeToggle<CR>
