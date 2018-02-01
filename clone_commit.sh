#!/bin/sh

usage() {
    echo "usage: $0 repo_url clone_dir commit_hash"
    exit 1
}

clone_commit() {
	if [ ! -d $2 ]; then
	   git clone $1 $2
	fi
	cd $2
	git checkout $3
}

if [ $# -eq 3 ]; then
	clone_commit
else
    usage
fi