yum -y install upgrade

yum install binutils -y 
yum install compat-libstdc++-33 -y 
yum install compat-libstdc++-33.i686 -y 
yum install gcc -y 
yum install gcc-c++ -y 
yum install glibc -y 
yum install glibc.i686 -y 
yum install glibc-devel -y 
yum install glibc-devel.i686 -y 
yum install ksh -y 
yum install libgcc -y 
yum install libgcc.i686 -y 
yum install libstdc++ -y 
yum install libstdc++.i686 -y 
yum install libstdc++-devel -y 
yum install libstdc++-devel.i686 -y  
yum install libaio -y 
yum install libaio.i686 -y 
yum install libaio-devel -y 
yum install libaio-devel.i686 -y 
yum install libXext -y 
yum install libXext.i686 -y 
yum install libXtst -y 
yum install libXtst.i686 -y 
yum install libX11 -y 
yum install libX11.i686 -y 
yum install libXau -y 
yum install libXau.i686 -y 
yum install libxcb -y 
yum install libxcb.i686 -y 
yum install libXi -y 
yum install libXi.i686 -y 
yum install make -y 
yum install sysstat -y 
yum install unixODBC -y 
yum install unixODBC-devel -y 
yum install zlib-devel -y 

yum -y groupinstall "X Window System"
yum -y groupinstall "Fonts"
yum -y install kde-workspace
yum -y install gdm
yum -y install xorg-x11-apps.x86_64

yum -y install kernel-headers
yum -y install kernel-devel
yum -y install kernel-uek-devel-`uname -r` 
yum -y kernel-headers

yum -y install --nogpgcheck kernel-uek

