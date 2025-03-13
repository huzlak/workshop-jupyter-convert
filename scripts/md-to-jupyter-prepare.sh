#!/usr/bin/env bash
echo export TERM=xterm
sed -e 's/<!--bash/```bash/' -e 's/-->/```/'
