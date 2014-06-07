-- this script changes iTerm's background image by random selection
-- 7th, June, 2014
-- set directory of background images
set fpath to "/Users/maple/Pictures/"
-- random selection of image
set num_file to do shell script ("ls -F " & fpath & " | grep -v / | wc -l")
set num_random to random number from 1 to (num_file as integer) with seed (month of (current date) as number + day of (current date) + time of (current date))
set fname to do shell script ("ls -F " & fpath & " | sed -n \"" & num_random & "p\"")

-- change background image configuration of iTerm.app
if application "iTerm" is running
	tell application "iTerm"
		set _current_session to current session of current terminal
		tell _current_session
			set background image path to (fpath & fname)
		end tell
	end tell
else
	"iTerm is not running"
end if
