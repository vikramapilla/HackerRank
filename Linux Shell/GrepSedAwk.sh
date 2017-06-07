# 1. 'Awk' - 3

awk '{
avg = ($2 + $3 + $4)/3
if (avg >= 50 && avg < 60)
    print $0, ": C"
else if (avg >= 60 && avg < 80)
    print $0, ": B"
else if (avg >= 80)
    print $0, ": A" 
else 
    print $0, ": FAIL" }'
	
# 2. 'Awk' - 4

awk 'ORS=NR%2?";":"\n"'

# 3. 'Grep' #1

grep "the "

# 4. 'Grep' #2

grep "the " -i

# 5. 'Grep' #3

grep -v "that " -i

# 6. 'Grep' - A

grep -Eiw 'the|that|then|those'

# 7. 'Grep' - B

grep -E '([0-9]) ?\1'

# 8. 'Sed' command #1

sed 's/the /this /'

# 9. 'Sed' command #2

sed 's/thy/your/ig'

# 10. 'Sed' command #3

sed -e 's/thy/{&}/ig'

# 11. 'Sed' command #4

sed 's/[0-9]\+ /**** /g'

# 12. 'Sed' command #5

sed -r 's/(.... )(.... )(.... )(....)/\4 \3\2\1/'
	
# 13. 'Awk' - 1

awk '{
if ($4 == "")
	print "Not all scores are available for",$1
}'

# 14. 'Awk' - 2

awk '{
    if( $2 < 50 || $3 < 50 || $4 < 50)
        print $1,": Fail"
    else
        print $1,": Pass"
}'