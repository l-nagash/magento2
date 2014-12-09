#!/bin/bash

echo 'alias phpunit="hhvm -v Eval.Jit=1 $TRAVIS_BUILD_DIR/vendor/phpunit/phpunit/phpunit"' >> ~/.bashrc
. ~/.bashrc
cd $TRAVIS_BUILD_DIR/dev/tests/unit/
for i in $(find ./testsuite -maxdepth 2 -mindepth 2 -type d | grep -v '_' | sort); do
    phpunit -c ./phpunit.xml.dist $i
    echo $i
    echo ""
done
