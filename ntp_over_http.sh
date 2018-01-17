#!/bin/bash

# Oneliner which calls convert-unix-time.com, which responds in json format
# jq retrieves the epoch timestamp

date -s @$(curl -s 'http://www.convert-unix-time.com/api?timestamp=now&timezone=amsterdam' | jq -r '.timestamp')
