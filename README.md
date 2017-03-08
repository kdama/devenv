# devenv

## Getting started

### Install

`devenv` requires [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/).

```sh
$ vagrant up
```

### Use

```sh
$ vagrant ssh
[vagrant@localhost ~]$ docker run -it -v /vagrant:/ws -w /ws kdama/devenv /bin/zsh
➜  /ws git:(master) ✗ node -v
v6.9.2
```
