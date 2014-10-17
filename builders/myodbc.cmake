############################################################################
# myodbc.cmake
# Copyright (C) 2014  Belledonne Communications, Grenoble France
#
############################################################################
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
#
############################################################################

set(EP_myodbc_GIT_REPOSITORY "git://git.linphone.org/myodbc.git")
set(EP_myodbc_GIT_TAG "83cdc8563b101ad19abcec051ee940cd499e7944")

set(EP_myodbc_CMAKE_OPTIONS "-DWITH_UNIXODBC=1")
set(EP_myodbc_LINKING_TYPE )
set(EP_myodbc_DEPENDENCIES EP_unixodbc )


