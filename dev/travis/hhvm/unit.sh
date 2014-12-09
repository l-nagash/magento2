#!/bin/bash

#echo 'alias phpunit="hhvm -c $TRAVIS_BUILD_DIR/dev/travis/php.ini -v Eval.Jit=1 $TRAVIS_BUILD_DIR/vendor/phpunit/phpunit/phpunit"' >> ~/.bashrc
#. ~/.bashrc
cd $TRAVIS_BUILD_DIR/dev/tests/unit/
for i in $(find ./testsuite -maxdepth 2 -mindepth 2 -type d | grep -v '_' | sort); do
    hhvm -c $TRAVIS_BUILD_DIR/dev/travis/php.ini -v Eval.Jit=1 $TRAVIS_BUILD_DIR/vendor/phpunit/phpunit/phpunit $i
    echo $i
    echo ""
done
