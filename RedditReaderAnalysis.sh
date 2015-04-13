#!/bin/bash
if [ $# -eq 0 ]
  then
    COMMENT_TIME=0
elif [ $# -eq 1 ]
  then
    COMMENT_TIME=$1
else
  echo "Error: Usage is RedditReaderAnalysis.sh <comment_time>"
  exit -1
fi

adb shell am start -d https://www.reddit.com/hot/.json -n 
org.quantumbadger.redreader/.activities.PostListingActivity --ez useCache true --ei EXTRA_TIME_DELAY 
$COMMENT_TIME

exit 0
