# Loading cache data offline #

Note: Requires root and 'apps and adb' must be enabled under superuser

## Loading Included Cache ##

Step 1: Move the database files
    `adb push cache/cache.db /sdcard/cache.db`
    `adb push cache/cache.db-journal /sdcard/cache.db-journal`
    
    `adb shell`
    `su`
    `cp /sdcard/cache.db /data/data/org.quantumbadger.redreader/databases/cache.db`
    `cp /sdcard/cache.db-journal /data/data/org.quantumbadger.redreader/databases/cache.db-journal`
    `exit`
    `exit`


Step 2: Move the cache files
    `adb push cache/files /sdcard/Android/data/org.quantumbadger.redreader/cache`


## Creating Your Own Cache ##

Step 1: Install the app, run the main operation to create the cache.

Step 2: Get database files
    `adb shell`
    `su`
    `cp /data/data/org.quantumbadger.redreader/databases/cache.db /sdcard`
    `cp /data/data/org.quantumbadger.redreader/databases/cache.db-journal /sdcard `
    `exit`
    `exit`

    `adb pull /sdcard/cache.db cache/cache.db`
    `adb pull /sdcard/cache.db-journal cache/cache.db-journal`

Step 3:  Get cache files
    `adb pull /sdcard/Android/data/org.quantumbadger.redreader/cache cache/files/`


Then, follow the instructions in 'Loading Included Cache' to load the cache.