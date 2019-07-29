#!/bin/bash

EXPECTED_HASH="5d5d5cb16c2656e68145ba3e25afa840c5d21074"
PATH_TO_CHECK="./repository"

VERBOSE=false
while true; do
  case "$1" in
    -v | --verbose ) VERBOSE=true; shift ;;
    -- ) shift; break ;;
    * ) break ;;
  esac
done

[ $VERBOSE == true ] && VERBOSE_FLAG="--verbose" || VERBOSE_FLAG=""
CHECK_RESULT=$(./../../scripts/check-folder.sh $VERBOSE_FLAG --path $PATH_TO_CHECK --hash $EXPECTED_HASH)

echo $CHECK_RESULT

CHECK_RESULT_CODE=$?
exit $CHECK_RESULT_CODE
