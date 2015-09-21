#!/bin/bash

source config.ini

while true; do
	wget http://minsk.the.by -O index.html -q
	grep "<div class=\"t\"><b>" index.html -m 1 | sed
	sleep $TIMEOUT
done
