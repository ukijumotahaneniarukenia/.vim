# lspにする

https://kashewnuts.github.io/2019/01/28/move_from_jedivim_to_vimlsp.html

https://qiita.com/kitagry/items/216c2cf0066ff046d200

http://kutimoti.hatenablog.com/entry/2018/05/20/110732

# .vim配下のディレクトリ構成のみを管理する

# .vimrcについてはdotfileレポで管理する

# vim本体のいんすこ

単体でリカバレるようにいんすこスクリプトをのこす

```
yum install -y git make ncurses-devel gcc
yum install -y gtk2-devel atk-devel libX11-devel libXt-devel
cd /usr/local/src
git clone https://github.com/vim/vim.git
cd vim
./configure --enable-multibyte --with-features=huge --enable-cscope --enable-gui=gtk2 --disable-selinux --prefix=/usr/local --enable-xim --enable-fontset --enable-gpm --enable-rubyinterp --with-python-config-dir=/usr/lib/python2.7/config
make -j12
make -j12 install
ln -fsr /usr/local/bin/vim /usr/bin/vim
ln -fsr /usr/local/bin/vim /usr/bin/vi
```

# ライブラリ管理dein.vimいんすこ

単体でリカバレるようにいんすこスクリプトをのこす

```
mkdir -p ~/.vim/bundle
cd ~ && curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
cd ~ && sh installer.sh ~/.vim/bundle && rm -rf installer.sh
```

# ライブラリ独自設定のためのvimファイル作成

デフォ作成して、独自設定なければ0バイトファイルのままこみっと
既にファイルが存在した場合は新規作成しない

```
grep repo ~/.vim/.dein.toml | grep -oP '(?<=\x27)(.*)/(.*)(?=\x27)' | tr '/' ':' | awk 'match($0,/:/){ \
  lft=substr($0,1,RSTART-1);
  rgt=substr($0,RSTART+1,length($0));
  if(rgt !~ /.vim$/){
     rgt=rgt".vim"
  }
  print "mkdir -p ~/.vim/util/"lft" && [ -f ~/.vim/util/"lft"/"rgt" ] || touch ~/.vim/util/"lft"/"rgt
}' | sh
find $HOME/.vim/util -type f -name "*"
```

# ライブラリはフォルダ名管理でライブラリ以外はファイル名管理
