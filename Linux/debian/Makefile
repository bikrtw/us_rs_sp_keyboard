BUILD=fakeroot dpkg-deb --build
RM=rm -rf
LINTIAN=lintian
GZ=gzip -f9
CP=cp
MV=mv -f
MKD=mkdir -p

PKG=xkb-us_rs_sp
VER=0.7.3
ARCH=all

PKG_NAME=$(PKG)_$(VER)_$(ARCH)
PACKAGE=$(PKG_NAME).deb

.PHONY: deb
deb: $(PACKAGE)

$(PACKAGE): $(PKG_NAME)/DEBIAN $(PKG_NAME)/usr/share/man/man7/us_rs_sp.7.gz $(PKG_NAME)/usr/share/doc/xkb-us_rs_sp/copyright $(PKG_NAME)/usr/share/X11/xkb/symbols/us_rs_sp $(PKG_NAME).zip
	$(BUILD) $(PKG_NAME)

.PHONY: zip
zip: $(PKG_NAME).zip

$(PKG_NAME).zip: $(PKG_NAME)/usr/share/man/man7/us_rs_sp.7.gz $(PKG_NAME)/usr/share/doc/xkb-us_rs_sp/copyright $(PKG_NAME)/usr/share/X11/xkb/symbols/us_rs_sp
	rm -f $(PKG_NAME).zip &&\
	cd $(PKG_NAME) &&\
	zip -r ../$@ usr -x \*.DS_Store \*__MACOSX \*DEBIAN &&\
	cd -

$(PKG_NAME)/DEBIAN: DEBIAN
	$(MKD) $(@D) &&\
	$(CP) -r $< $(PKG_NAME)/

$(PKG_NAME)/usr/share/man/man7/us_rs_sp.7.gz: ../man/us_rs_sp.7
	$(MKD) $(@D) &&\
	$(CP) $< man.tmp &&\
	$(GZ) man.tmp &&\
	$(MV) man.tmp.gz $@

$(PKG_NAME)/usr/share/doc/xkb-us_rs_sp/copyright: ../copyright
	$(MKD) $(@D) &&\
	$(CP) $< $@

$(PKG_NAME)/usr/share/X11/xkb/symbols/us_rs_sp: ../us_rs_sp
	$(MKD) $(@D) &&\
	$(CP) $< $@

.PHONY: clean
clean:
	$(RM) $(PKG_NAME) $(PACKAGE)
	$(RM) $(PKG_NAME).zip

.PHONY: lintian
lintian: $(PACKAGE)
	$(LINTIAN) $(PACKAGE)

.PHONY: test-trigger.deb
test-trigger.deb:
	$(BUILD) test-trigger

