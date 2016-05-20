#!/bin/sh

if [ -n "@ep_use_c_compiler_for_assembler@" ]
then
	export AS="@AUTOTOOLS_C_COMPILER@"
else
	if [ -n "@AUTOTOOLS_AS_COMPILER@" ]
	then
		export AS="@AUTOTOOLS_AS_COMPILER@"
	fi
fi
export CC="@AUTOTOOLS_C_COMPILER@"
export CXX="@AUTOTOOLS_CXX_COMPILER@"
export OBJC="@AUTOTOOLS_OBJC_COMPILER@"
export LD="@AUTOTOOLS_LINKER@"
export AR="@AUTOTOOLS_AR@"
export RANLIB="@AUTOTOOLS_RANLIB@"
export STRIP="@AUTOTOOLS_STRIP@"
export NM="@AUTOTOOLS_NM@"
export CC_NO_LAUNCHER="@AUTOTOOLS_C_COMPILER_NO_LAUNCHER@"
export CXX_NO_LAUNCHER="@AUTOTOOLS_CXX_COMPILER_NO_LAUNCHER@"
export OBJC_NO_LAUNCHER="@AUTOTOOLS_OBJC_COMPILER_NO_LAUNCHER@"

ASFLAGS="@ep_asflags@"
CPPFLAGS="@ep_cppflags@"
CFLAGS="@ep_cflags@"
CXXFLAGS="@ep_cxxflags@"
OBJCFLAGS="@ep_objcflags@"
LDFLAGS="@ep_ldflags@"

export PATH="@CMAKE_PROGRAM_PATH@:$PATH"
export PKG_CONFIG="@LINPHONE_BUILDER_PKG_CONFIG@"
export PKG_CONFIG_PATH="@LINPHONE_BUILDER_PKG_CONFIG_PATH@"
export PKG_CONFIG_LIBDIR="@LINPHONE_BUILDER_PKG_CONFIG_LIBDIR@"

cd "@ep_build@"

if [ ! -f "@ep_config_h_file@" ]
then
	@ep_autogen_command@ @ep_autogen_redirect_to_file@
	@ep_configure_env@ @ep_configure_command@ @ep_configure_redirect_to_file@
fi
