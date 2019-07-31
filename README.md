# 9月頃までにフォルダ構成いいかんじにする

# vim 最新版instrall

```
[root@5568195e9119 /]# yum install -y git make ncurses-devel gcc
[root@a3b26b7780cb /]# yum install -y gtk2-devel atk-devel libX11-devel libXt-devel
[root@156d107c6f35 /]# git clone https://github.com/vim/vim.git
[root@156d107c6f35 /]# cd vim
[root@5568195e9119 src]# ./configure --enable-multibyte --with-features=huge --enable-cscope --enable-gui=gtk2 --disable-selinux --prefix=/usr/local --enable-xim --enable-fontset --enable-gpm --enable-rubyinterp --with-python-config-dir=/usr/lib/python2.7/config
[root@156d107c6f35 vim]# make
[root@156d107c6f35 vim]# make install
[root@156d107c6f35 vim]# vim --version
[root@156d107c6f35 vim]# which vim
/usr/local/bin/vim
[root@centos oracle]# ln -fsr /usr/local/bin/vim /usr/bin/vim
[root@centos oracle]# ln -fsr /usr/local/bin/vim /usr/bin/vi
```

# dein.vim install
```
[root@a3b26b7780cb ~]# mkdir -p ~/.vim/bundle
[root@a3b26b7780cb ~]# curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
[root@a3b26b7780cb ~]# sh installer.sh ~/.vim/bundle
```

それまでいろいろさわっておく

# ref

```
https://qiita.com/itmammoth/items/312246b4b7688875d023
https://qiita.com/ahiruman5/items/4f3c845500c172a02935
https://qiita.com/jnchito/items/57ffda5712636a9a1e62
https://qiita.com/yuku_t/items/0c1aff03949cb1b8fe6b
https://leico.github.io/TechnicalNote/VimR/VimR-dein-toml
https://shirusu-ni-tarazu.hatenablog.jp/entry/2012/12/10/005225
https://vimconf.vim-jp.org/2014/slides/06_%E6%80%96%E3%81%8F%E3%81%AA%E3%81%84%E3%83%9E%E3%82%AF%E3%83%AD%E5%85%A5%E9%96%80__deris.pdf
https://qiita.com/reireias/items/beaa3bb0e299ae934217
https://qiita.com/okamos/items/2259d5c770d51b88d75b
https://qiita.com/hodanov/items/399590f61db5a56077d7
```

# ~/.vimrc

```
scriptencoding utf-8 "Vim script内でマルチバイト文字を使う場合の設定
runtime! util/*.vim
syntax enable
```
