# Development

On an x86 Linux PC (e.g. running Debian 12, Ubuntu 22.04, e.g. the NAS
itself...):

```shell
cd qdm12-ddns-updater-deb/ # assuming you didn't tell git to clone it elsewhere
dpkg-buildpackage -us -uc && \
    scp ../qdm12-ddns-updater_2.1.10-fcch2_amd64.deb root@fcchfw1:/tmp && \
    ssh root@fcchfw1 sudo apt -y install --reinstall /tmp/qdm12-ddns-updater_2.1.10-fcch2_amd64.deb
```

Once testing is comlete, upload the package to our website, for easy access
from machines during setup:

```shell
scp ../qdm12-ddns-updater_2.1.10-fcch2_amd64.deb fcch-web:/home/u930-v2vbn3xb6dhb/www/fortcollinscreatorhub.org/public_html/rpi-packages
```

# Binary origin

bin/ddns-updater:
    https://github.com/qdm12/ddns-updater/releases/download/v2.10.0/ddns-updater_2.10.0_linux_amd64
    Retrieved 2026/09/22
