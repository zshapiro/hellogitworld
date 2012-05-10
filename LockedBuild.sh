#!/bin/tcsh -f

set LOCK="$HOME/BUILD.lock"

if ( -f "$LOCK" ) then
	echo "$LOCK exists."
	echo 'Try "make force" to override.'
	exit 1
endif
onintr unlock
	touch $LOCK
	awjam -j5 |& tee LOG_${VARIANT}
unlock:
	rm -f $LOCK
