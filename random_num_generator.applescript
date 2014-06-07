set fpath to "~/Pictures/"
set num_file to do shell script ("ls -F " & fpath & " | grep -v / | wc -l")
set num_random to random number from 1 to (num_file as integer) with seed (month of (current date) as number + day of (current date) + time of (current date))
set fname to do shell script ("ls -F " & fpath & " | sed -n \"" & num_random & "p\"")