#!/bin/sh
find . -type f -exec sha1sum {} \; | sort -k2,2
