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

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Defense Tools For The Blind..."
echo
echo "Installing Automated Defense:"
echo "--------------------"
$DIR/auto_def_insta..sh
echo "WARNING:  Correct any problems MANUALLY before starting Automated Defense"
echo "You can start the Automated Defense with /etc/init.d/auto_def"
echo
echo "Cron:"
echo "--------------------"
$DIR/find_cron.sh
echo
echo "Root:"
echo "--------------------"
$DIR/find_root.sh
echo
echo "Read/Write:"
echo "--------------------"
$DIR/find_rw.sh
echo
echo "Set (U/G)ID:"
echo "--------------------"
$DIR/find_setid.sh
echo
echo "Shells:"
echo "--------------------"
$DIR/find_shells.sh
echo
echo "SSH:"
echo "--------------------"
$DIR/find_ssh.sh
echo
echo "Temp:"
echo "--------------------"
$DIR/find_temp.sh
echo
echo "New:"
echo "--------------------"
$DIR/find_net.sh
