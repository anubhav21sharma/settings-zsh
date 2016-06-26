set -e

#Install gcc-4.7 and g++-4.7 and use them to make the projects below.

#install GMP
#wget http://ftp.gnu.org/gnu/gmp/gmp-5.1.3.tar.gz
#tar xvzf gmp-5.1.3.tar.gz
#cd gmp-5.1.3/
#CPPFLAGS=-fexceptions 
#sudo apt-get install m4 #Optional
#./configure -enable-cxx --prefix=/usr/local
#make clean
#make
#make check
#sudo make install 
#sudo ldconfig
#cd ..


#install MPFR
#wget http://www.mpfr.org/mpfr-3.1.2/mpfr-3.1.2.tar.gz
#tar xvzf mpfr-3.1.2.tar.gz 
#cd mpfr-3.1.2
#./configure --prefix=/usr/local
#make clean
#make
#make check
#sudo make install
#sudo ldconfig
#cd ..

#install MPC
#wget http://www.multiprecision.org/mpc/download/mpc-0.8.2.tar.gz
#tar xvzf mpc-0.8.2.tar.gz 
#cd mpc-0.8.2
#./configure --prefix=/usr/local
#make clean
#make
#make check
#sudo make install
#sudo ldconfig
#cd ..


#install PIPL
#This method most probably wont work with g++-4.9. 
#Try downgrading to g++-4.7 (and make a soft link)
#wget http://bugseng.com/external/ppl/download/ftp/releases/1.1/ppl-1.1.tar.gz
#tar xvzf ppl-1.1.tar.gz
#cd ppl-1.1/
#./configure --prefix=/usr/local
#make
#make check
#sudo make install
#sudo ldconfig
#cd ..

#install CLOOG
#wget http://www.bastoul.net/cloog/pages/download/count.php3?url=./cloog-parma-0.16.1.tar.gz
#tar xvzf cloog-parma-0.16.1.tar.gz
#cd cloog-parma-0.16.1/
#./configure --prefix=/usr/local --with-ppl
#make 
#make check
#sudo make install
#sudo ldconfig
#cd ..

#Compile GCC
# If you get an error about CXXABI_1.3.8 not found - try moving the libstdc++.so.6 file as shown by make output to libstdc++.so.6.old.
# i.e mv /home/anubhav/GCC/build/x86_64-unknown-linux-gnu/libstdc++-v3/src/.libs/libstdc++.so.6{,.old}

#cp /PATH/TO/gcc-4.7.2.zip .
#unzip gcc-4.7.2.zip
#mkdir build install
SRC=/home/anubhav/GCC/gcc-4.7.2
cd build
#$SRC/configure --enable-languages=c --prefix=/home/anubhav/GCC/install/
make 
sudo make install
echo "DONE!"
exit




