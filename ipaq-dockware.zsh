#!/bin/zsh
for x in "$@"
do
	pcp ${x} ":/Program Files/DockWare/$(basename ${x})"
done
