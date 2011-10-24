#!/bin/bash

if [ -z `which jscoverage-server` ]; then

	echo "
Install jscoverage-server with:
	
  $ svn co http://svn.siliconforks.com/jscoverage/trunk jscoverage
  $ cd jscoverage
  $ ./bootstrap.sh
  $ make
  $ cd jscoverage-server /usr/local/bin/jscoverage-server

or see http://siliconforks.com/jscoverage/download.html
"

else

	if [ -z $1 ]; then
		echo "You need to specify which project you would like to test"
	else

		TARGET="coverage/${1}-report"

		echo "Starting coverage for ${1}"
		echo "Report will be in ${TARGET}"

		test -d coverage || mkdir coverage
		test -d $TARGET && rm -r $TARGET
	
		jscoverage-server --no-instrument=/Specs/ --document-root=$1 --report-dir=$TARGET --verbose
	fi

fi

