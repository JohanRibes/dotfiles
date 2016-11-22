#!/bin/sh
<<<<<<< HEAD
# Faire la distinction entre Darwin et Linux/Unix en cherchan sha1sum ou shasum par exemple.
=======
>>>>>>> fbf1ed6a33058fa1e105c54a9ce33816f88970d1
find . -type f -exec sha1sum {} \; | sort -k2,2
