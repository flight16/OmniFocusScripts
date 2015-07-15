-- Run this script to select a random task in your current view.  It probably won't work with nested tasks.
tell application id "com.omnigroup.OmniFocus2"
	tell default document
		tell the front document window
			set theTasks to tree of content
			set randIdx to random number from 1 to the length of theTasks
			repeat with aTask in theTasks
				set aTask's selected to false
			end repeat
			set theTask to item randIdx of theTasks
			set theTask's selected to true
			return theTask's name
		end tell
	end tell
end tell

