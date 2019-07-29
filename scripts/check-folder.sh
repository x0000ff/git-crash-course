#!/bin/bash

print_usage() {
    echo "#####################################"
    echo "This script checks if '<PATH>' has the same has has the '<EXPECTED HASH>' argument."
    echo "-------------------------------------"
    echo "Usage:"
    echo "$0 <PATH TO FOLDER> <EXPECTED HASH>"
    echo "$0 ./my-folder \"7616d2986455f626c3e553844ca26d4505adb442\""
    echo "#####################################"
}

VERBOSE=false
while true; do
  case "$1" in
    -v | --verbose ) VERBOSE=true; shift ;;
    -h | --hash ) EXPECTED_HASH="$2"; shift 2 ;;
    -p | --path ) PATH_TO_CHECK="$2"; shift 2 ;;
    -- ) shift; break ;;
    * ) break ;;
  esac
done

if [ -z $PATH_TO_CHECK ] 
then
    echo "⚠️  Missed '<PATH>' argument"
    print_usage
    exit 1
fi

if [ -z $EXPECTED_HASH ] 
then
    echo "⚠️  Missed '<EXPECTED HASH>' argument"
    print_usage
    exit 1
fi

[[ $VERBOSE ]] && VERBOSE_FLAG="--verbose" || VERBOSE_FLAG=""

CHECK_RESULT=$(./../../scripts/compare-folder-hash.sh $VERBOSE_FLAG $PATH_TO_CHECK $EXPECTED_HASH)
CHECK_RESULT_CODE=$?  

if [ $CHECK_RESULT_CODE -eq 0 ]; then
    echo ""
    echo "🎉 Congrats! You've solved the quiz!"
    echo ""
else
    echo "😢 You didn't solve the quz. Looks like the folder structure isn't correct. Try again..."
fi

if $VERBOSE; then
    echo $CHECK_RESULT
fi

exit $CHECK_RESULT_CODE