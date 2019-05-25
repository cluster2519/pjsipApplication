
#!/bin/sh
echo "Start pjsip commandline build"

wget https://www.pjsip.org/release/2.8/pjproject-2.8.tar.bz2
tar -jxvf pjproject-2.8.tar.bz2
cd pjproject-2.8
touch pjlib/include/pj/config_site.h
./configure
make dep
make


echo "Complete!"
