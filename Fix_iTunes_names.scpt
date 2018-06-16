-- Copyright (c) 2018 Dave Diamond
tell application "iTunes"
	repeat with atrack in tracks of library playlist 1
		if kind of atrack = "MPEG audio file" then
			set d to disc number of atrack
			if d < 10 then
				set dd to "0" & d
			else
				set dd to d as text
			end if
			set t to track number of atrack
			if t < 10 then
				set tt to "0" & t
			else
				set tt to t as text
			end if
			set prefix to dd & "-" & tt & "- "
			set n1 to name of atrack as text
			if n1 starts with prefix then
				set n2 to text ((length of prefix) + 1) thru -1 of n1
				set name of atrack to n2
				log n2
			end if
		end if
	end repeat
end tell
