#!/bin/sh

set -e

testfile="$HOME/foo.txt"
movetofile="$HOME/bar.txt"

echo "creating $testfile"
echo foo > "$testfile"

sudo chown -v root:root "$testfile"
sudo chmod -v 0200 "$testfile"

echo "where did your file go root?"
mv -v "$testfile" "$movetofile"
rm -vf "$movetofile"
