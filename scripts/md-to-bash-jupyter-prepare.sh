#!/usr/bin/env bash
sed -n '/```bash/,/```/p; /<!--bash/{x; s/^$/\n/; p; x}; /<!--bash/,/-->/p' | egrep -v '```|<!--bash|-->' | awk 'NF || prev=="blank" {print} {prev=NF ? "" : "blank"} /mocha/ {print ""}'
