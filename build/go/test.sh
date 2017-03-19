#!/bin/bash

. ../init.sh

if [ $# -lt 1 ]; then
  echo "$0 <version>"
  exit 0
fi

VERSION=$1
PREFIX=/opt/wandbox/go-$VERSION

test "`$PREFIX/bin/go run $BASE_DIR/resources/test.go`" = "hello"
