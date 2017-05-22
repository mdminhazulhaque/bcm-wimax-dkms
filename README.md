# DKMS for bcm_wimax

Module source from Linux 3.18.53 (the last version where the module was still a part of mainline kernel)

```bash
# init source
mv bcm_wimax-5.2.45 /usr/src/bcm_wimax-0.1

# create and build dkms
dkms add -m bcm_wimax -v 0.1
dkms clean -m bcm_wimax -v 0.1
dkms build -m bcm_wimax -v 0.1
dkms install -m bcm_wimax -v 0.1

# load and reload the module
modprobe bcm_wimax
modprobe -r bcm_wimax

# install required packages
apt install dpkg-dev dh-make dkms

# build packages
dkms mkdeb -m bcm_wimax -v 0.1
dkms mkrpm -m bcm_wimax -v 0.1
```


## TODO

* ~~Add support for Ubuntu 16.04 x86 (via DKMS)~~

