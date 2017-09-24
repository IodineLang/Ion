ION_PREFIX=/usr/lib
ION_SCRIPT=/usr/bin/ion

ION_FILES += semver.id
ION_FILES += prettyconsole.id
ION_FILES += ion.id
ION_FILES += ion_frontend.id

install:
	mkdir -p $(ION_PREFIX)/ion
	cp -f  $(ION_FILES) $(ION_PREFIX)/ion
	echo "#! /bin/bash" > $(ION_SCRIPT)
	echo "iodine '$(ION_PREFIX)/ion/ion_frontend.id' \"\$$@\"" >> $(ION_SCRIPT)
	chmod +x $(ION_SCRIPT)
