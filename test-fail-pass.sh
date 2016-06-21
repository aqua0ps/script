#!/bin/bash -eu

"$@"
status=$?

if [ ! -z "$TMUX" ] ; then
	if [ "$status" -ne 0 ] ; then
		tmux display-message "test failed"
	else
		tmux display-message "test passed"
	fi
fi

exit $status
