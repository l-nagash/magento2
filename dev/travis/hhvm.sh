#!/bin/bash

currentPath=$(pwd)
echo $currentPath;
echo $TRAVIS_BUILD_DIR;
cat ${TRAVIS_BUILD_DIR}/dev/travis/php.ini >> /etc/hhvm/php.ini;
#    cat $TRAVIS_BUILD_DIR/dev/travis/php.ini >> ~/.phpenv/versions/$(phpenv version-name)/php.ini;
