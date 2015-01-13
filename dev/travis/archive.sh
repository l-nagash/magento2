#!/bin/bash

set -e

printenv | grep TRAVIS_JOB_NUMBER

name=travis_${TRAVIS_JOB_NUMBER}_${TRAVIS_BUILD_ID}.tar.gz
declare -a files
for i in $(find /tmp/ -path '/tmp/mtf*.log' -type f); do
    files+=("$i")
done
files+=("./var/*")
files+=("./dev/tests/functional/var")

tar czfP /tmp/${name}.tar.gz $(printf " %s" "${files[@]}");
