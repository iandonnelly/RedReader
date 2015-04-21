#!/bin/bash
if [ $# -ne 3 ]
  then
    USE_CACHE=true
    USE_FAST_TIME=true
    COMMENT_TIME=0
elif [ $# -eq 3 ]
  then
    USE_CACHE=$1
    USE_FAST_TIME=$2
    COMMENT_TIME=$3
else
  echo "Error: Usage is RedditReaderAnalysis.sh <use_cache> <use_fast_time> <comment_time>"
  exit -1
fi

adb shell am start -d https://www.reddit.com/hot/.json -n org.quantumbadger.redreader/.activities.PostListingActivity --ez USE_CACHE $USE_CACHE --ez USE_FAST_TIME $USE_FAST_TIME --ei EXTRA_TIME_DELAY $COMMENT_TIME

exit 0
