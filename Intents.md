# Intents for RedReader #

## Opening the Front Page ##

Log:		
	`START u0 {dat=https://www.reddit.com/hot/.json cmp=org.quantumbadger.redreader/.activities.PostListingActivity}`
Command: 		
	`am start -d https://www.reddit.com/hot/.json -n org.quantumbadger.redreader/.activities.PostListingActivity`
Options:
	`--ez useCache <boolean>` -- specify whether to load from the cache or network
	`--ei EXTRA_TIME_DELAY <int>` -- specify number of seconds between clicking comments and them loading
## Opening the Comments ##

Log:		
	`START u0 {dat=https://www.reddit.com/comments/31vclm/.json cmp=org.quantumbadger.redreader/.activities.CommentListingActivity}`		
Command:
	`am start -d https://www.reddit.com/comments/31vclm/.json -n org.quantumbadger.redreader/.activities.CommentListingActivity`	
Options:	
	`--ei commentTime <int>` -- specify the number of seconds before comments populate