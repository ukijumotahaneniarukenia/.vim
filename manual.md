# .vim配下のディレクトリ構成のみを管理する

# .vimrcについてはdotfileレポで管理する

# vim本体のいんすこ

単体でリカバレるようにいんすこスクリプトをのこす

```
yum install -y git make ncurses-devel gcc
yum install -y gtk2-devel atk-devel libX11-devel libXt-devel
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
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh installer.sh ~/.vim/bundle
```
