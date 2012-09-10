#!/usr/bin/make -f

# Makefile for gitolite-monkeysphere-integration

# © 2012 Etienne Perot <etienne@perot.me>
# Licensed under GPL v3

PREFIX ?= /usr

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 src/gitolite-monkeysphere-update $(DESTDIR)$(PREFIX)/bin
	sed -i 's:__SYSSHAREDIR_PREFIX__:$(PREFIX):' $(DESTDIR)$(PREFIX)/bin/gitolite-monkeysphere-update

.PHONY: install
