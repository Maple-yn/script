set fpath to "~/Pictures/"
set num_file to do shell script ("ls -F " & fpath & " | grep -v / | wc -l")
