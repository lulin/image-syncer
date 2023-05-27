#!/bin/bash

while read line
do
  echo ${line}
  skopeo sync --dest-creds ${USERNAME}:${PASSWORD} --src docker --dest docker ${line}
done < sync.list