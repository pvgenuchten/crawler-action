#!/bin/sh -l

echo "Processing $1 to $2"

crawl-metadata --mode=export --dir=$1 --dir-out=$2 --dir-out-mode=flat

echo "status=OK" >> $GITHUB_OUTPUT