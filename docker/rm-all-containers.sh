#!/bin/bash

for c in $( docker ps -a | cut -d ' ' -f 1 | tail  -n +2 ); do
	docker rm -f $c
done

