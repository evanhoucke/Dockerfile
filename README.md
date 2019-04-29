### Xiekers Docker Images Repo!

```
Buildbot        ---> Archlinux aur Build Bot
golang          ---> go language support environment
h5ai            ---> online file view
java            ---> java(8) language support environment.
nextcloud       ---> an open source, self-hosted file share and communication platform, like owncloud.
owncloud        ---> an open source, self-hosted file sync and share app platform.
php7            ---> php(7) language support environment  running in alpine include nginx php7!
rsync           ---> an open source utility that provides fast incremental file transfer. 
sshd            ---> support remote access via ssh ,running in debian buster
ttyd            ---> Share your terminal over the web
```

### Run 

```
$ run shadowsocks
docker run -d -p 6443:6443 -e PASSWORD=passwd registry.cn-hongkong.aliyuncs.com/imxieke/shadowsocks 
```

### Linux 

	alpine      A minimal Linux
	amazonlinux Amazon Distribution,Base RHEL
	archlinux   A simple, lightweight distribution
	debian      Debian is a Linux distribution that's composed entirely of free and open-source software.
	deepin 		a beautiful open source  GNU/Linux, Base Debian
	ubuntu      Ubuntu is a Debian-based Linux operating system based on free software.

#### images/name/Dockerfile is latest version image
#### images/name/Dockerfile.dev is dev version image