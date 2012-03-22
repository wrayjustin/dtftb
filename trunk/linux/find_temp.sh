#!/bin/bash

#	dtftb - Defense Tools For The Blind
#	Copyrighted:  Justin M. Wray (wray.justin@gmail.com)
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

find /tmp -type f -perm -a+x -exec ls -lah {} \; 2>/dev/null
find /var/tmp -type f -perm -a+x -exec ls -lah {} \; 2>/dev/null