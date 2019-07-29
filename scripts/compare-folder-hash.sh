#!/bin/bash

print_usage()
{
	echo "Missed arguments"
	echo "Usage:"
    echo "$0 --verbose <path> <expected hash>"
	echo ""
	echo "i.e.:"
    echo "$0 --verbose ./exercise-1 45ba53902b67d58984eed4130c74a1c4"
}

VERBOSE=false
while true; do
  case "$1" in
    -v | --verbose ) VERBOSE=true; shift ;;
    -- ) shift; break ;;
    * ) break ;;
  esac
done

PATH_TO_HASH=$1
if [ "$PATH_TO_HASH" == "" ]; then
	print_usage
	exit 1
fi

EXPECTED_HASH=$2

check() {
	HASH_RESULT=$(find $PATH_TO_HASH -type f -not -path "$PATH_TO_HASH/.git/*" -print0 | sort -z | xargs -0 sha1sum | sha1sum)
	ACTUAL_HASH=($(echo "$HASH_RESULT"))
	
	if $VERBOSE; then
		if [ "$ACTUAL_HASH" = "$EXPECTED_HASH" ]; then
			echo "Hashes are equal."
		else
			echo "Hashes are not equal.
			Expected: $EXPECTED_HASH
			Got:      $ACTUAL_HASH"
		fi
	fi

	[[ "$ACTUAL_HASH" = "$EXPECTED_HASH" ]] && exit 0 || exit 1
}

check