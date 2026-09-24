# Copyright 2023-2026 Stephen Warren <swarren@wwwdotorg.org>
# SPDX-License-Identifier: MIT

.PHONY: default
default: build

.PHONY: build
build:

.PHONY: install
install:
	install -D                      -d $(DESTDIR)/opt/qdm12-ddns-updater/
	install -D                      -d $(DESTDIR)/opt/qdm12-ddns-updater/bin/
	install -m 755 bin/ddns-updater    $(DESTDIR)/opt/qdm12-ddns-updater/bin/
	install -D                      -d $(DESTDIR)/opt/qdm12-ddns-updater/etc/
	install -m 640 etc/config.json     $(DESTDIR)/opt/qdm12-ddns-updater/etc/
	install -D                      -d $(DESTDIR)/opt/qdm12-ddns-updater/var/

	# Must be in /lib not /opt/... for some reason?
	install -D -d $(DESTDIR)/lib/systemd/system/
	install -m 644 lib/systemd/system/qdm12-ddns-updater.service $(DESTDIR)/lib/systemd/system/
