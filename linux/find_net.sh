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

lsof -i | grep -P "LISTEN|ESTABLISHED"
grep -H "+ +" /etc/hosts.allow
grep -H "+ +" /etc/hosts.equiv
grep -H "+ +" /.rhosts
grep -H "+:+::::::" /etc/hosts.allow 2>/dev/null
grep -H "+:+::::::" /etc/hosts.equiv 2>/dev/null
grep -H "+:+::::::" /.rhosts 2>/dev/null

ps aux | grep "smbmount" | grep -v "grep"

grep -H "smbfs" /etc/fstab
