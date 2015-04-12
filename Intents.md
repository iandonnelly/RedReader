# Intents for RedReader #

## Opening the Front Page ##

Log:		
	`START u0 {dat=https://www.reddit.com/hot/.json cmp=org.quantumbadger.redreader/.activities.PostListingActivity}`		
Command: 		
	`am start -d https://www.reddit.com/hot/.json -n org.quantumbadger.redreader/.activities.PostListingActivity`
	
## Opening the Comments ##

Log:		
	`START u0 {dat=https://www.reddit.com/comments/31vclm/.json cmp=org.quantumbadger.redreader/.activities.CommentListingActivity}`		
Command:
	`am start -d https://www.reddit.com/comments/31vclm/.json -n org.quantumbadger.redreader/.activities.CommentListingActivity`