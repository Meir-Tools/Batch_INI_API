# inline option
get-content asd.txt | Select-string "hostname=" | ForEach-Object{"$_".Split("=")[1]}
