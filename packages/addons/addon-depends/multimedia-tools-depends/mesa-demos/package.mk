# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="mesa-demos"
PKG_VERSION="8.3.0"
PKG_SHA256="c173154bbd0d5fb53d732471984def42fb1b14ac85fcb834138fb9518b3e0bef"
PKG_ARCH="i386 x86_64"
PKG_LICENSE="OSS"
PKG_SITE="http://www.mesa3d.org/"
PKG_URL="ftp://ftp.freedesktop.org/pub/mesa/demos/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain libX11 mesa glu glew"
PKG_LONGDESC="Mesa 3D demos - installed are the well known glxinfo and glxgears."
PKG_TOOLCHAIN="autotools"
PKG_BUILD_FLAGS="-sysroot"

PKG_CONFIGURE_OPTS_TARGET="--without-glut"

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
    cp -P src/xdemos/glxdemo $INSTALL/usr/bin
    cp -P src/xdemos/glxgears $INSTALL/usr/bin
    cp -P src/xdemos/glxinfo $INSTALL/usr/bin
}
