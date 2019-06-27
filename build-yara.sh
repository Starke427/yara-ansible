# Download, build, and install yara from the VirusTotal github.

version=3.10.0

yum install automake libtool make gcc -y
curl -L https://github.com/VirustTotal/yara/archive/$version.tar.gz
tar -zxf $version.tar.gz
cd yara-$version.tar.gz
./bootstrap.sh
./configure
make
make install
