# .vim


ベンダー用ディレクトリの作成

ベンダー依存の設定値はこのディレクトリ配下にファイル拡張子vimとして配備するなど

デフォはベンダに切り出したいが、どうしても効かない場合は以下の.vimrcファイルに追記するなど

```
$HOME/.vimrc
```

CMD

```
$ INSTALL_DIR_NAME=$HOME/.vim/util;find $HOME/.vim/plugged -maxdepth 1 | ruby -F'(?<=/)' -anle 'puts case when $F.size==6;$F[$F.size-1];else nil;end'|sed '/^$/d' | xargs -I@ echo mkdir -p $INSTALL_DIR_NAME/@
```

OUT

```
mkdir -p /home/aine/.vim/util/vimdoc-ja
mkdir -p /home/aine/.vim/util/asyncomplete.vim
mkdir -p /home/aine/.vim/util/vim-fugitive
mkdir -p /home/aine/.vim/util/asyncomplete-lsp.vim
mkdir -p /home/aine/.vim/util/molokai
mkdir -p /home/aine/.vim/util/vim-lsp-settings
mkdir -p /home/aine/.vim/util/swift.vim
mkdir -p /home/aine/.vim/util/vim-instant-markdown
mkdir -p /home/aine/.vim/util/coc.nvim
mkdir -p /home/aine/.vim/util/vim-trailing-whitespace
mkdir -p /home/aine/.vim/util/async.vim
mkdir -p /home/aine/.vim/util/vim-lsp
mkdir -p /home/aine/.vim/util/emmet-vim
```


設定を初期化する際

```
rm -rf  $HOME/.vim

git clone https://github.com/ukijumotahaneniarukenia/.vim.git $HOME/.vim
```
