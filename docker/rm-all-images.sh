#!/bin/bash

for i in $( docker images -a | sed 's/^[^[:blank:]]\+[[:blank:]]\+[^[:blank:]]\+[[:blank:]]\+\([^[:blank:]]\+\).*/\1/g' | tail  -n +2 ); do
	docker rmi $i
done

