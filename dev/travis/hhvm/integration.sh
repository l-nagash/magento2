#!/bin/bash

echo 'alias phpunit="hhvm -c $TRAVIS_BUILD_DIR/dev/travis/php.ini -v Eval.Jit=1 $TRAVIS_BUILD_DIR/vendor/phpunit/phpunit/phpunit"' >> ~/.bashrc
. ~/.bashrc
cd $TRAVIS_BUILD_DIR/dev/tests/integration/
#hhvm -c $TRAVIS_BUILD_DIR/dev/travis/php.ini -v Eval.Jit=false $TRAVIS_BUILD_DIR/vendor/phpunit/phpunit/phpunit -c ./phpunit.xml.dist
phpunit -c ./phpunit.xml.dist --testsuite $TEST_SUITE_INT
