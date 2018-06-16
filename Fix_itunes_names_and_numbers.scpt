-- Copyright (c) 2018 Dave Diamond
tell application "iTunes"
	repeat with atrack in tracks of library playlist 1
		if kind of atrack = "MPEG audio file" then
			set n1 to name of atrack as text
			set dd to text 1 thru 2 of n1
			set tt to text 4 thru 5 of n1
			try
				set d to dd as number
				set t to tt as number
				set prefix to dd & "-" & tt & "- "
				if n1 starts with prefix then
					set n2 to text ((length of prefix) + 1) thru -1 of n1
					if disc number of atrack = 0 then
						set disc number of atrack to d
					end if
					if track number of atrack = 0 then
						set track number of atrack to t
					end if
					set name of atrack to n2
					log n2
				end if
			end try
		end if
	end repeat
end tell
