export THEOS=/opt/theos
export THEOS_DEVICE_IP=127.0.0.1
export THEOS_DEVICE_PORT=22
ARCHS=arm64 arm64e

_THEOS_PLATFORM_DPKG_DEB=dpkg-deb
THEOS_PLATFORM_DEB_COMPRESSION_TYPE=gzip
THEOS_PLATFORM_DEB_COMPRESSION_LEVEL=9

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = inspectorplus
inspectorplus_FILES = main.xm

include $(THEOS_MAKE_PATH)/tweak.mk

