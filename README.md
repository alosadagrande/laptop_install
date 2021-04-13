# laptop_install
Here you can find the playbooks I use when reinstalling my laptop. This repository is based on the work done by @e-minguez [laptop_install](https://github.com/e-minguez/laptop_install). Although, I removed a lot of stuff from there. Probably you should take a look to his repository if you want to know more about how you can automatically do when setting up your new computer.

Based on Fedora 33

## Getting the OS

```
./get_release.sh
```

## Process

* Prerrequisites

```
$ sh -c "$(curl -sSL https://raw.githubusercontent.com/e-minguez/laptop_install/master/bootstrap.sh)"
```

Or:

```
$ sudo dnf install -y ansible git dnf-plugins-core libselinux-python
$ mkdir -p ~/git
$ git clone https://github.com/alosadagrande/laptop_install.git ~/git/laptop_install
$ cd ~/git/laptop_install
```

* Edit [myvars.yaml](myvars.yaml) to fit your needs and run

```
$ ansible-playbook -i inventory -e @myvars.yaml ansible/<choose your playbook>.yaml
```

## References
* https://github.com/e-minguez/laptop_install

