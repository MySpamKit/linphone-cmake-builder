#!/bin/sh

export CC=@LINPHONE_BUILDER_TOOLCHAIN_CC@
export CXX=@LINPHONE_BUILDER_TOOLCHAIN_CXX@
export OBJC=@LINPHONE_BUILDER_TOOLCHAIN_OBJC@
export LD=@LINPHONE_BUILDER_TOOLCHAIN_LD@
export AR=@LINPHONE_BUILDER_TOOLCHAIN_AR@
export RANLIB=@LINPHONE_BUILDER_TOOLCHAIN_RANLIB@
export STRIP=@LINPHONE_BUILDER_TOOLCHAIN_STRIP@
export NM=@LINPHONE_BUILDER_TOOLCHAIN_NM@

export ASFLAGS="@ep_asflags@ @LINPHONE_BUILDER_TOOLCHAIN_ASFLAGS@ @ep_extra_asflags@"
export CPPFLAGS="@ep_cppflags@ @LINPHONE_BUILDER_TOOLCHAIN_CPPFLAGS@ @ep_extra_cppflags@"
export CFLAGS="@ep_cflags@ @LINPHONE_BUILDER_TOOLCHAIN_CFLAGS@ @ep_extra_cflags@"
export CXXFLAGS="@ep_cxxflags@ @LINPHONE_BUILD_TOOLCHAIN_CXXFLAGS@ @ep_extra_cxxflags@"
export OBJCFLAGS="@ep_objcflags@ @LINPHONE_BUILD_TOOLCHAIN_OBJCFLAGS@ @ep_extra_objcflags@"
export LDFLAGS="@ep_ldflags@ @LINPHONE_BUILDER_TOOLCHAIN_LDFLAGS@ @ep_extra_ldflags@"

export PKG_CONFIG="@LINPHONE_BUILDER_PKG_CONFIG@"
export PKG_CONFIG_PATH="@LINPHONE_BUILDER_PKG_CONFIG_PATH@"
export PKG_CONFIG_LIBDIR="@LINPHONE_BUILDER_PKG_CONFIG_LIBDIR@"

cd @ep_build@

if [ ! -f @ep_config_h_file@ ]
then
	@ep_autogen_command@ @ep_redirect_to_file@
	@ep_configure_env@ @ep_configure_command@ @ep_redirect_to_file@
fi
