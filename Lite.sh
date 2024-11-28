#!/bin/bash

sgmodule_files="$({ find LoonKissSurge -type f -name "*.sgmodule"; } 2>"/dev/null")"
for file in ${sgmodule_files}; do
  sed -i 's/,pre-matching//g' "$file"
  sed -i '/http-response-jq/d' "$file"
done
exit 0
