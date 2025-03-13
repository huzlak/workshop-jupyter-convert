#!/usr/bin/env bash
echo '```bash'
echo 'export TERM=xterm'
echo '```'
sed -e 's/<!--bash/```bash/' -e 's/-->/```/'
