# Dev-Env-OL7-Ol8
Ambiente Desarrollo en Oracle Linux 7.x/8.x

# Descripción Directorio
- Shell: Posee archivos Batch que nos facilitaran la instalación de algunos requisitos para este GitHub.
- Bash_Profile: Posee ejemplo de los .bash_profile de como configurarlos para tener un buen resultado en este GitHub.
- OL7.yum.repos.d: Posee los .repo necesarios para este GitHub para Oracle Linux 7.x.
- OL8.yum.repos.d: Posee los .repo necesarios para este GitHub para Oracle Linux 8.x.

Este GitHub se ha ejecutado en las siguintes versiones de Oracle Linux:

- Oracle Linux 7.2
Linux ol72.sacaci.cl 3.10.0-229.el7.x86_64 #1 SMP Fri Mar 6 04:05:24 PST 2015 x86_64 x86_64 x86_64 GNU/Linux
- Oracle Linux 7.7
Linux ol77.sacaci.cl 3.10.0-1062.18.1.el7.x86_64 #1 SMP Wed Mar 18 11:05:28 PDT 2020 x86_64 x86_64 x86_64 GNU/Linux
- Oracle Linux 8.1
  Linux ol81.sacaci.cl 4.18.0-147.el8.x86_64 #1 SMP Tue Nov 12 11:05:49 PST 2019 x86_64 x86_64 x86_64 GNU/Linux

## Requisitos:
- Seguir este instructivo al detalle.
- Tener acceso a cuenta root, ya se por sudo o por password.
- Tener un usuario de desarrollo ("desa" para este GitHub).

### Oracle Linux 7.x
Copiar el contenido del directorio OL7.yum.repos.d/ del GitHub a este directorio /etc/yum.repos.d/.

### Oracle Linux 8.x
Copiar el contenido del directorio OL8.yum.repos.d/ del GitHub a este directorio /etc/yum.repos.d/.

### Ejecutar los siguientes archivos:
En el usuario root:
```sh
$ mkdir Install
```
Copiar el contenido del directorio Shell/ del GitHub a este directorio Install/.

### Oracle Linux 7.x
Usuario: root
```sh
$ cd Install
$ sh -x ./0.runyum.sh
$ sh -x ./1.firewall.sh
$ sh -x ./2.disabledIPV6.sh
$ init 6
```
### Oracle Linux 8.x
Usuario: root
```sh
$ cd Install
$ sh -x ./0.runyum.sh
$ sh -x ./1.firewall.sh
$ sh -x ./2.disabledIPV6.sh
$ yum groupinstall "Server with GUI"
$ init 6
```
**Nota**:
> Si entrega algunos mensajes de error, Ignorar. Más adelante se instalaran aquellos que fallaron.

## WGET
Usuario: root
```sh
$ yum -y install wget
```

## FIREFOX
Usuario: root
```sh
$ yum -y install firefox
```

## GIT
Usuario: root
```sh
$ yum -y upgrade
$ yum -y install git
$ git version
```

# # Instalando Java
Usuario: root
(Version: JDK 1.8_0_241 : https://www.oracle.com/java/technologies/javase-jdk8-downloads.html ) (2020.03.30)
```sh
$ wget https://download.oracle.com/otn/java/jdk/8u241-b07/1f5b5a70bf22433b84d0e960903adac8/jdk-8u241-linux-x64.tar.gz?AuthParam=1585529091_9eab346dc53a8b2937a703f87632d104 -O jdk-8u241-linux-x64.tar.gz
$ tar -xvf jdk-8u241-linux-x64.tar.gz
$ mv jdk1.8.0_241/ /opt
$ yum -y update nss
```
**Nota**:
> Existe la posibilidad que solicite Acceso a Oracle para descargar el archivo.

## Visual Studio Code
( Version: Code https://code.visualstudio.com/download )
Url: https://code.visualstudio.com/docs/?dv=linux64_rpm  (2020.03.30)
Usuario: root
```sh
$ firefox https://code.visualstudio.com/docs/?dv=linux64_rpm   
  Se bajara en /root/Descargas/
$ cd /root/Descargas
$ yum -y install libXScrnSaver.x86_64
$ yum -y install libX11-devel.x86_64
$ rpm -ivh code-1.43.2-1585036535.el7.x86_64.rpm
$ yum -y update nss
$ code
```
**Mensaje**:
> You are trying to start vscode as a super user which is not recommended. If you really want to, you must specify an alternate user data directory using the --user-data-dir argument.

Usuario: desa
```sh
$ export DISPLAY=<ip>:0.0
$ code
```

## Python
Usuario: root
```sh
$ yum -y install oracle-epel-release-el7
$ yum -y install python36
$ python3 --version
```

## MAVEN
(Versioón: Apache Maven 3.5.4 )
Usuario: root
### Oracle Linux 7.x
```sh
$ wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
$ yum -y install apache-maven
$ mvn --version
```
### Oracle Linux 8.x
```sh
$ dnf -y install maven
$ mvn --version
```

## Spring Studio Tool Suite
Usuario: root
```sh
$ wget https://download.springsource.com/release/STS4/4.6.0.RELEASE/dist/e4.15/spring-tool-suite-4-4.6.0.RELEASE-e4.15.0-linux.gtk.x86_64.tar.gz -O spring-tool-suite-4-4.6.0.RELEASE-e4.15.0-linux.gtk.x86_64.tar.gz
$ tar -xvf spring-tool-suite-4-4.6.0.RELEASE-e4.15.0-linux.gtk.x86_64.tar.gz
$ mv sts-4.6.0.RELEASE/ /opt/sts4.6.0
$ SpringToolSuite4
```
**Nota**:
>Modificar el .bash_profile

## GO Languaje
(Versión: Go 1.13 https://golang.org/dl/ )
Usuario: root
```sh
$ wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz
$ tar -C /usr/local -xzf go1.13.linux-amd64.tar.gz
$ go version
```
**Nota**:
> Editar .bash_profile
      export GOPATH=$HOME/work-go
      export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

## Gin Gonic - Golang FrameWork
```sh
$ go get -u github.com/gin-gonic/gin
```
## Goji - Golang FrameWork
```sh
$ go get goji.io
```

## NodeJs
Usuario: root
### Oracle Linux 7.x
```sh
$ yum -y install oracle-nodejs-release-el7 oracle-release-el7
$ yum -y install nodejs
```
### Oracle Linux 8.x
```sh
$ yum -y install nodejs
```

## PYCHARM - Editor Python - Framework
Usuario: root
```sh
$ firefox https://www.jetbrains.com/es-es/pycharm/download/download-thanks.html?platform=linux&code=PCC
$ tar -xvf pycharm-community-2019.3.4.tar.gz
$ mv pycharm-2019.3.4/ /opt/
$ cd pycharm.2019.3.4/bin
$ ./pycharm.sh
```
**Nota**:
> Editar .bash_profile
>       ## Python
>       export PYCHARM_JDK=$JAVA_HOME/jre
>       export PYCHARM=/opt/pycharm-2019.3.4
>       export PATH=$PYCHARM/bin:$PYCHARM_JDK/bin:$PATH

## Docker-Engine (Oracle Linux)
Pre-Requisito: copiar docker.repo a /etc/yum.repos.d/
Usuario: root
### Oracle Linux 7.x
```sh
$ yum -y install docker-engine
$ docker version
$ systemctl start docker
$ systemctl enable docker
$ usermod -aG docker root
$ usermod -ag docker desa
```
### Oracle Linux 8.x
```sh
$ dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
$ dnf repolist -v 
   Versiones Disponibles:
      docker-ce-3:18.09.1-3.el7
      docker-ce-18.06.3.ce-3.el7;
      docker-ce-17.12.1.ce-1.el7.centos
$ dnf -y install docker-ce-3:18.09.1-3.el7
$ docker version
$ systemctl start docker
$ systemctl enable docker
$ usermod -aG docker root
$ usermod -ag docker desa
```

## Docker-Compose
Usuario: root
### Oracle Linux 7.x
```sh
$ yum -y install python-pip
$ pip install docker-compose
$ yum -y install python-pip python-devel gcc
$ pip install --upgrade pip
$ pip install docker-compose
$ docker-compose --version
```
### Oracle Linux 8.x
```sh
$ curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
$ chmod +x /usr/local/bin/docker-compose
$ docker-compose --version
```

## XAMPP
Usuario: root
```sh
$ firefox https://www.apachefriends.org/xampp-files/7.4.3/xampp-linux-x64-7.4.3-0-installer.run
$ chmod 755 xampp-linux-x64-7.4.3-0-installer.run
$ ./xampp-linux-x64-7.4.3-0-installer.run
```

## WorkBench MYSQL
Usuario: root
### Oracle Linux 7.x
```sh
$ firefox https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-8.0.19-1.el7.x86_64.rpm
$ yum -y install libzip proj
$ yum -y install gtkmm30
$ rpm -ivh mysql-workbench-community-8.0.14-1.el7.x86_64.rpm
```
### Oracle Linux 8.x
```sh
$ firefox https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-8.0.19-1.el8.x86_64.rpm
$ firefox firefox http://35.244.242.82/yum/epel/el7/x86_64/proj-4.8.0-4.el7.x86_64.rpm
$ rpm -ivh proj-4.8.0-4.el7.x86_64.rpm
$ yum -y install libzip 
$ yum -y install gtkmm30
$ dnf -y install mesa-libGLU
$ yum -y install  mysql-workbench-community-8.0.19-1.el8.x86_64.rpm
$ mysql-workbench
```
**Nota**:
> mysql-workbench, se demora la 1era vez en iniciarse.

## Eclipse.JEE (2020-03-R)
(Versión: eclipse-jee-2020-03-R-incubation-linux-gtk-x86_64.tar.gz)
Usuario: root
```sh
$ firefox 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2020-03/R/eclipse-jee-2020-03-R-incubation-linux-gtk-x86_64.tar.gz&mirror_id=576'
$ tar -xvf eclipse-jee-2020-03-R-incubation-linux-gtk-x86_64.tar.gz
$ mv eclipse/ /opt/
$ eclipse
```
**Nota**:
> Editar .bash_profile
>      ## Eclipse
>      export PATH=/opt/eclipse:$PATH

## JENKINS (CI/CD)
Usuario: root
```sh
$ wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
$ rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
$ yum -y install jenkins
$ systemctl start jenkins
$ systemctl enable jenkins
$ systemctl status jenkins
$ systemctl stop jenkins
```

## Ansible
Usuario: root
### Oracle Linux 7.x
```sh
$ yum -y install ansible
```
### Oracle Linux 8.x
```sh
$ dnf install python3-jinja2
$ alternatives --set python /usr/bin/python3
$ pip3 install ansible --user
$ ansible --version
```

## Composer
(Versión: Composer version 1.10.1 2020-03-13 )
Usuario: root
```sh
$ yum -y update
$ yum -y install php-cli php-zip php-json wget unzip
$ php -r "copy('https://getcomposer.org/installer','composer-setup.php');"
$ php composer-setup.php --install-dir=/usr/local/bin --filename=composer
$ composer --version
```

## FrameWork Laravel
Usuario: root
```sh
$ yum -y install php-mbstring 
$ yum -y install  php-xml
$ mkdir -p /var/www
$ cd /var/www/
$ git clone https://github.com/laravel/laravel.git
$ cd /var/www/laravel
$ composer diagnose
   Obs: Debe estar todo OK.
$ composer install
```
**Nota**:
> Si reclama por auth.json, se debe recrear:
```sh
>  Crear <__TOKEN__> en cuenta personal GitHub.
>   $ firefox https://github.com/settings/tokens
>   $ composer config -g --unset github_auth.api.auth.com
>  $ composer config -g --unset github_auth.api.auth.com  <__TOKEN__> 
>   $ composer install
```
**Nota**:
> Asignar al usuario desa para su utlización:
```sh
>   $ chownd -R desa.desa /var/www/laravel
>   $ chmod -R 755 /var/www/laravel 
```

## JDeveloper 
(Versión: 12.2.1.2.0)
URL: https://www.oracle.com/tools/downloads/jdev-v12212-downloads.html#license-lightbox
Descargar: jdev_suite_122120.jar y jdev_suite_1221202.jar
FTP de bash_profile.desa a /home/desa
Usuario: desa
```sh
$ cat bash_profile >> .bash_profile
$ java -jar jdev_suite_122120.jar
$ cd /home/desa/Oracle/Middleware/Oracle_Home/jdeveloper/jdev/bin
$ ./jdev
```
**Nota**: 
> Existe la posibilidad que solicite Acceso a Oracle para descargar el archivo.
>      Cree su cuenta y descargue el software.

## Terraform
Usuario: root
### Oracle Linux 7.x
```sh
$ cat <<EOF > /etc/yum.repos.d/terraform.repo
[ol7_developer]
name=Oracle Linux $releasever Development Packages ($basearch)
baseurl=http://yum.oracle.com/repo/OracleLinux/OL7/developer/$basearch/
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-oracle
gpgcheck=1
enabled=1
EOF
$ yum -y install terraform
```
### Oracle Linux 8.x
```sh
$ yum -y update
$ yum -y install wget unzip
$ TER_VER=`curl -s https://api.github.com/repos/hashicorp/terraform/releases/latest | grep tag_name | cut -d: -f2 | tr -d \"\,\v | awk '{$1=$1};1'`
$ wget https://releases.hashicorp.com/terraform/${TER_VER}/terraform_${TER_VER}_linux_amd64.zip
$ unzip terraform_${TER_VER}_linux_amd64.zip 
$ mv terraform /usr/local/bin/
$ which terraform
$ terraform -v
```

## Packer
Usuario: root
### Oracle Linux 7.x
```sh
$ yum -y install packer
```
### Oracle Linux 8.x
```sh
$ mkdir -p $(go env GOPATH)/src/github.com/hashicorp && cd $_
$ git clone https://github.com/hashicorp/packer.git
$ cd packer
$ make dev
$ cd $(go env GOPATH)/src/github.com/hashicorp/packer/bin
$ ./packer --version
$ ./packer --help
```
**Nota**:
> Por defecto hay un utilitario llamado "packer" en /usr/bin, por lo cual debemos ejecutar "/usr/local/packer".
>      Se recomienda realizar un Link Symbolic  para llamar este ejecutable instalado.

## NGINX
Usuario: root
### Oracle Linux 7.x
```sh
$ cat <<EOF > /etc/yum.repos.d/nginx.repo
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/mainline/centos/7/$basearch/
gpgcheck=0
enabled=1
EOF
$ yum -y install nginx
$ systemctl start nginx
$ systemctl enable nginx
$ systemctl status nginx
$ systemctl stop nginx
$ firefox http://localhost/
```
### Oracle Linux 8.x
```sh
$ dnf install -y nginx 
$ systemctl start nginx
$ systemctl enable nginx
$ systemctl status nginx
$ systemctl stop nginx
$ firefox http://localhost/
```

# Extension Visual Studio Code
### Laravel
- BootStrap 4 Snippet for VS Code (Zac Zoro)
- Intellisence for CSS class name (Zingid)
- Laravel 5 Snippet for VS Code (Winnie Lin)
- PHP IntelePhanse (Ben Meuburn)
- PHP Intellisense (Felix Becker)

### NodeJs
- Auto Import (Steortes)
- Auto Import - ES6, TS, JSX, TSX

### VueJS
- Material Icotheme (Philipp Kiet)
- Vetur (pipe.wu)
- Vue VsCode Snippets 1.8 (Sauch Drasser)
- Vue-Peek (Dario Fuzinato)

### Otras
- Cloudfoundry Manifest YML Support
- Concourse CI Pipeline Editor
- Python for VSCode
- Live Server
- Language Support for Java(TM) by Red Hat
- Go

## SACACIngeniería
### SACACI Chile


