#!/usr/bin/env sh
set -e
cmd=$1
case $cmd in
build)
    cd /docs
    make html
;;
web)
    cd /docs/_build/html
    python -m http.server 80
;;
*)
    echo "Usage: $0 <build | web>"
    ;;
esac
