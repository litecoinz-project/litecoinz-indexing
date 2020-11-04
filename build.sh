#!/bin/bash -x

make -j2 -C depends/

./autogen.sh 

CONFIG_SITE=/home/ubuntu/prev/litecoinz-indexing/depends/x86_64-pc-linux-gnu/share/config.site ./configure --prefix=/ --disable-ccache --disable-maintainer-mode --disable-dependency-tracking --enable-glibc-back-compat --enable-reduce-exports --disable-bench --disable-tests --disable-gui-tests CFLAGS="-O2 -g" CXXFLAGS="-O2 -g" LDFLAGS="-static-libstdc++"

make -j2

rm -f /home/ubuntu/prev/litecoinz-indexing/litecoinz-indexing.tar.gz
rm -rf /home/ubuntu/prev/litecoinz-indexing/litecoinz-indexing
mkdir /home/ubuntu/prev/litecoinz-indexing/litecoinz-indexing

make install DESTDIR=/home/ubuntu/prev/litecoinz-indexing/litecoinz-indexing
tar zcvf /home/ubuntu/prev/litecoinz-indexing/litecoinz-indexing.tar.gz /home/ubuntu/prev/litecoinz-indexing/litecoinz-indexing

