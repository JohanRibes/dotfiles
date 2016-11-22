#!/bin/sh
# Faire la distinction entre Darwin et Linux/Unix en cherchan sha1sum ou shasum par exemple.
find . -type f -exec sha1sum {} \; | sort -k2,2
