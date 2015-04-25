# README for CIS4930 Project 3 #

## Building ##

**1\. Download and Install Android Studio.**

**2\. Install the Correct SDKs.**
- Using the SDK Manager in Android Studio, click the packages button in the top right
and check the option "Show Obsolete Packages".
- Check the boxes next to `Android 4.1.2 (API 16)` and `Android 4.0 (API 14)`.

**3\. Download the RedReader Source.**
- In the Android Studio main screen, select `Import from Version Control` and choose "GitHub".
- Use the following URL as the Project Source: `https://github.com/iandonnelly/RedReader.git`.

**4\. Now Continue The Official Build Instructions.**
Now follow the (RedReader Build Instructions)[BUILD.md] starting at step 9.

## Running ##
To run our code which opens to a cached version of the Front Page and then opens the comments for the top article, run the following command:
`./RedditReaderAnalysis.sh`

## Cache ##

Note: Requires root and 'apps and adb' must be enabled under superuser

### Loading Included Cache ###

Our cache files are loacted [here](Performance Analysis/cache/).  

Step 1: Move the database files  
  
    adb push cache/cache.db /sdcard/cache.db  
    adb push cache/cache.db-journal /sdcard/cache.db-journal  
    
    adb shell  
    su  
    cp /sdcard/cache.db /data/data/org.quantumbadger.redreader/databases/cache.db  
    cp /sdcard/cache.db-journal /data/data/org.quantumbadger.redreader/databases/cache.db-journal  
    exit  
    exit  


Step 2: Move the cache files  
  
    adb push cache/files /sdcard/Android/data/org.quantumbadger.redreader/cache  


### Creating Your Own Cache ###

Step 1: Install the app, run the main operation to create the cache.  

Step 2: Get database files  
  
    adb shell  
    su  
    cp /data/data/org.quantumbadger.redreader/databases/cache.db /sdcard  
    cp /data/data/org.quantumbadger.redreader/databases/cache.db-journal /sdcard  
    exit  
    exit  

    adb pull /sdcard/cache.db cache/cache.db  
    adb pull /sdcard/cache.db-journal cache/cache.db-journal  

Step 3:  Get cache files  
  
    adb pull /sdcard/Android/data/org.quantumbadger.redreader/cache cache/files/  

Then, follow the instructions in 'Loading Included Cache' to load the cache.