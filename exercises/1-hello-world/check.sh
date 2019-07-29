#!/bin/bash

EXPECTED_HASH="02ff5c6dbc6dce350721f84187a4db64a12d3a5b"
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
