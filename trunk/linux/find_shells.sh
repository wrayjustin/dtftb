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

grep "NOPASSWD" /etc/sudoers

ps aux | grep "bash" | awk {' if ($7 == "?") print $0 '}

PHPFILES=`find / -type f -name \*.php -exec ls -1 {} \; 2>/dev/null`

for i in $PHPFILES; do
	grep -l "system(\$_GET" $i
	grep -l "exec(\$_GET" $i
	grep -l "system(\$_POST" $i
	grep -l "exec(\$_POST" $i
	grep -l "system(\$_REQUEST" $i
	grep -l "exec(\$_REQUEST" $i
done

