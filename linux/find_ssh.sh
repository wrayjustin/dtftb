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

KEYFILE=`cat /etc/ssh/sshd_config | grep "authorized_keys" | awk -F\/ {' print $NF '}`
FOUND=`find / -type f -name $KEYFILE -exec ls -1 {} \; 2>/dev/null | grep -vF .find_ssh.list`

for i in $FOUND; do
	echo $i
	cat $i
done

grep "^PermitRootLogin yes" /etc/ssh/sshd_config
grep "^PermitEmptyPasswords yes" /etc/ssh/sshd_config
grep "^PasswordAuthentication yes" /etc/ssh/sshd_config
grep "^UsePAM no" /etc/ssh/sshd_config
cat /etc/ssh/sshd_config | grep -v "^Port 22" | grep "^Port"
